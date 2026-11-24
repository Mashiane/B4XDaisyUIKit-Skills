import json

with open(r'c:\b4a\workspace\0SithasoDaisyUIKit\b4xdaisyuikit-skills\tools\designer_properties_audit.json', 'r', encoding='utf-8') as fp:
    d = json.load(fp)

print('=== 58 Content/Placeholder Traps ===')
for c, k, v, desc in d['content_defaults']:
    print(f'{c}.{k} = "{v}"')

print('\n=== Key Structural False Defaults (Blindspots) ===')
for c, k, desc in d['structural_false'][:40]:
    print(f'{c}.{k} = False ({desc})')

print('\n=== Key Size Defaults (Blindspots) ===')
for c, k, v, desc in d['size_defaults'][:30]:
    print(f'{c}.{k} = "{v}" ({desc})')
