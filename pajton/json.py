import os
import sys

if __name__ == "__main__":
    if len(sys.argv) < 2:
        sys.exit()
    n = int(sys.argv[1])
    jsonFiles = {}
    for currDir, subDir, files in os.walk(os.getenv("HOME") or ""):
        for f in files:
            if f.endswith(".json"):
                path = os.path.join(currDir, f)
                jsonFiles[path] = os.path.getsize(path)

    for fname, fsize in jsonFiles:
        print(f"{fname} = {fsize}")
