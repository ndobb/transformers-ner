import os
import sys
from pathlib import Path

filepath = sys.argv[1]
filename = os.path.basename(filepath).split('.')[0]
parent_dir = Path(filepath).parent.absolute()
output = []
labels = set()

with open(filepath, 'r', encoding='utf-8') as fin:
    for line in fin.readlines():
        l = line.strip()
        if not any(l):
            output.append(['',''])
        else:
            parts = l.split()
            token = parts[0]
            label = parts[-1]

            if label not in labels:
                labels.add(label)
            output.append([token, label])

with open(f'{os.path.join(parent_dir, f"{filename}_labels.txt")}', 'w+', encoding='utf-8') as fout:
    for label in sorted(labels):
        fout.write(f'{label}\n')
    
for token, label in output:
    print(f'{token} {label}'.strip())


