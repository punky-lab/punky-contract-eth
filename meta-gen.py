"""
This script generates metadata files in `meta/` folder.
Please create the directory first.
---
by FrozenArcher
"""

import json

external_url = "https://punky-lab.github.io"
gateway = "https://cyan-acute-python-533.mypinata.cloud/ipfs"
folder_cid = "QmV4McU7smfMhbkRY4GG8wzSQ4Vgvd11jJFAdDuVzNTTA7"

# uint256 public constant PunkyBase = 0
# uint256 public constant HeadWhiteCap = 1
# uint256 public constant NeckSparkLab = 2
# uint256 public constant TailZebra = 3
# uint256 public constant BodyBasin = 4

filenames = {
    0: "punky-base.svg",
    1: "white-cap.svg",
    2: "sparklab-necklace.svg",
    3: "zebra-tail.svg",
    4: "basin.svg",
}

names = {
    0: "Punky Base",
    1: "White Cap",
    2: "SparkLab Necklace",
    3: "Zebra Tail",
    4: "Basin",
}

descs = {
    0: "Punky dog herself",
    1: "A white cap",
    2: "SparkLab Necklace",
    3: "A zebra's Tail",
    4: "A big basin",
}


if __name__ == "__main__":
    for i in range(5):
        metadata = {
            "description": descs[i],
            "external_url": external_url,
            "image": f"{gateway}/{folder_cid}/{filenames[i]}",
            "name": names[i],
        }
        with open(f"meta/{i}.json", "w") as f:
            json.dump(metadata, f)
