#!/usr/bin/env python3
"""Find connected approximate-color regions in an Android screenshot."""

import argparse
import json
import sys


NAMED_COLORS = {
    "red": (230, 40, 40), "green": (40, 190, 70), "blue": (40, 90, 230),
    "yellow": (240, 220, 30), "orange": (240, 130, 30), "white": (245, 245, 245),
    "black": (15, 15, 15), "cyan": (30, 210, 210), "magenta": (220, 40, 210),
}


def parse_bounds(value, width, height):
    if not value:
        return (0, 0, width, height)
    try:
        left, top, right, bottom = (int(part) for part in value.split(","))
    except (ValueError, TypeError):
        raise argparse.ArgumentTypeError("bounds must be left,top,right,bottom")
    left, top = max(0, left), max(0, top)
    right, bottom = min(width, right), min(height, bottom)
    if right <= left or bottom <= top:
        raise argparse.ArgumentTypeError("bounds are empty or outside the image")
    return left, top, right, bottom


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("image", help="Screenshot image path")
    parser.add_argument("color", nargs="?", choices=sorted(NAMED_COLORS), help="Approximate named color")
    parser.add_argument("--rgb", help="Target RGB value, e.g. 51,102,255")
    parser.add_argument("--tolerance", type=int, default=70, help="Per-channel difference allowed (default: 70)")
    parser.add_argument("--bounds", help="Search region: left,top,right,bottom in image pixels")
    parser.add_argument("--min-size", type=int, default=10, help="Minimum matching pixels per region (default: 10)")
    parser.add_argument("--json", action="store_true", help="Emit machine-readable JSON")
    args = parser.parse_args()

    if bool(args.rgb) == bool(args.color):
        parser.error("provide exactly one named color or --rgb R,G,B")
    if not 0 <= args.tolerance <= 255 or args.min_size < 1:
        parser.error("tolerance must be 0..255 and min-size must be positive")
    try:
        from PIL import Image
    except ImportError:
        print("Pillow is required. Install it with: python -m pip install Pillow", file=sys.stderr)
        return 2
    try:
        target = NAMED_COLORS[args.color] if args.color else tuple(int(v) for v in args.rgb.split(","))
        if len(target) != 3 or any(v < 0 or v > 255 for v in target):
            raise ValueError
    except ValueError:
        parser.error("RGB must contain three integers from 0 to 255")

    try:
        image = Image.open(args.image).convert("RGB")
    except Exception as exc:
        print(f"Could not open image: {exc}", file=sys.stderr)
        return 2
    width, height = image.size
    try:
        left, top, right, bottom = parse_bounds(args.bounds, width, height)
    except argparse.ArgumentTypeError as exc:
        parser.error(str(exc))

    pixels = image.load()
    region_w, region_h = right - left, bottom - top
    mask = bytearray(region_w * region_h)
    tolerance = args.tolerance
    for ry in range(region_h):
        y = top + ry
        row = ry * region_w
        for rx in range(region_w):
            r, g, b = pixels[left + rx, y]
            if abs(r - target[0]) <= tolerance and abs(g - target[1]) <= tolerance and abs(b - target[2]) <= tolerance:
                mask[row + rx] = 1

    regions = []
    for index, matched in enumerate(mask):
        if not matched:
            continue
        mask[index] = 0
        stack = [index]
        min_x = max_x = index % region_w
        min_y = max_y = index // region_w
        count = 0
        while stack:
            current = stack.pop()
            x, y = current % region_w, current // region_w
            count += 1
            min_x, max_x = min(min_x, x), max(max_x, x)
            min_y, max_y = min(min_y, y), max(max_y, y)
            for ny in range(max(0, y - 1), min(region_h, y + 2)):
                row = ny * region_w
                for nx in range(max(0, x - 1), min(region_w, x + 2)):
                    neighbor = row + nx
                    if mask[neighbor]:
                        mask[neighbor] = 0
                        stack.append(neighbor)
        if count >= args.min_size:
            x1, y1, x2, y2 = left + min_x, top + min_y, left + max_x, top + max_y
            regions.append({
                "center": [round((x1 + x2) / 2), round((y1 + y2) / 2)],
                "bounds": [x1, y1, x2, y2],
                "pixels": count,
            })

    regions.sort(key=lambda item: item["pixels"], reverse=True)
    result = {"image": args.image, "image_size": [width, height], "target_rgb": list(target), "regions": regions[:100]}
    if args.json:
        print(json.dumps(result, indent=2))
    else:
        print(f"Image: {args.image} ({width}x{height}); target RGB {target}; matches: {len(regions)}")
        for i, item in enumerate(regions[:100], 1):
            print(f"{i:>3}: center={item['center']} bounds={item['bounds']} pixels={item['pixels']}")
        if not regions:
            print("No matching regions. Try a higher --tolerance or a different --rgb value.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
