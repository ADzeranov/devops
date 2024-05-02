import os
import json
pycodestyle_check = os.system('python3 -m pycodestyle app.py > /dev/null 2>&1')
os.system('python3 -m bandit -r app.py -f json -o result.json > /dev/null 2>&1')
with open("result.json", "r") as word:
    bandit = json.load(word)
if bandit["results"] or pycodestyle_check:
    raise RuntimeError("Error")