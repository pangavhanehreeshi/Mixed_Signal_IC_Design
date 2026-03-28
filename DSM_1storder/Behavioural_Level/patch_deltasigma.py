"""
Patch script for python-deltasigma compatibility with Python 3.9+ and NumPy 1.24+
Run this script once: python patch_deltasigma.py
"""

import os
import sys
import site

# Find the deltasigma package location
def find_deltasigma_path():
    for path in site.getsitepackages():
        candidate = os.path.join(path, 'deltasigma')
        if os.path.isdir(candidate):
            return candidate
    # Also check user site packages
    candidate = os.path.join(site.getusersitepackages(), 'deltasigma')
    if os.path.isdir(candidate):
        return candidate
    return None

ds_path = find_deltasigma_path()
if not ds_path:
    print("ERROR: deltasigma package not found. Is it installed?")
    sys.exit(1)

print(f"Found deltasigma at: {ds_path}")

# ── Patch definitions ──────────────────────────────────────────────────────────
# Each entry: (filename, old_string, new_string, description)
patches = [
    (
        '_constants.py',
        'eps = np.finfo(np.float).eps',
        'eps = np.finfo(float).eps',
        'np.float -> float'
    ),
    (
        '_utils.py',
        'gcd = fractions.gcd',
        'from math import gcd',
        'fractions.gcd -> math.gcd'
    ),
    (
        '_utils.py',
        'np.float,',
        'float,',
        'np.float in carray'
    ),
    (
        '_utils.py',
        'np.int,',
        'int,',
        'np.int in carray'
    ),
    (
        '_utils.py',
        'np.complex,',
        'complex,',
        'np.complex in carray'
    ),
    (
        '_utils.py',
        'np.bool,',
        'bool,',
        'np.bool in carray'
    ),
    (
        '_synthesizeNTF0.py',
        'np.float)',
        'float)',
        'np.float in synthesizeNTF0'
    ),
    (
        '_synthesizeNTF0.py',
        'np.complex)',
        'complex)',
        'np.complex in synthesizeNTF0'
    ),
    (
        '_simulateDSM.py',
        'np.float)',
        'float)',
        'np.float in simulateDSM'
    ),
    (
        '_simulateDSM.py',
        'np.int)',
        'int)',
        'np.int in simulateDSM'
    ),
    (
        '_mapABCD.py',
        'np.float)',
        'float)',
        'np.float in mapABCD'
    ),
    (
        '_scaleABCD.py',
        'np.float)',
        'float)',
        'np.float in scaleABCD'
    ),
]

# ── Apply patches ──────────────────────────────────────────────────────────────
total_applied = 0
total_skipped = 0
total_failed  = 0

for filename, old, new, desc in patches:
    filepath = os.path.join(ds_path, filename)
    if not os.path.isfile(filepath):
        print(f"  [SKIP] {filename} not found — skipping '{desc}'")
        total_skipped += 1
        continue

    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()

    if old not in content:
        print(f"  [SKIP] '{desc}' already patched or not present in {filename}")
        total_skipped += 1
        continue

    content = content.replace(old, new)
    with open(filepath, 'w', encoding='utf-8') as f:
        f.write(content)

    print(f"  [OK]   Patched '{desc}' in {filename}")
    total_applied += 1

# ── __init__.py syntax warning fix (invalid escape sequence) ──────────────────
init_path = os.path.join(ds_path, '__init__.py')
if os.path.isfile(init_path):
    with open(init_path, 'r', encoding='utf-8') as f:
        content = f.read()
    # Convert the docstring with invalid escape to a raw string
    if '"""' in content and r'\_' not in content and '\\_' in content:
        content = content.replace('\\_', r'\_')
        with open(init_path, 'w', encoding='utf-8') as f:
            f.write(content)
        print(f"  [OK]   Fixed invalid escape sequence in __init__.py")
        total_applied += 1
    else:
        print(f"  [SKIP] __init__.py escape sequence already fine or not matched")
        total_skipped += 1

print()
print(f"Done. {total_applied} patch(es) applied, {total_skipped} skipped, {total_failed} failed.")
print()
print("Now test with:")
print("  python -c \"import deltasigma as ds; print('Import OK')\"")
