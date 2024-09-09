import json

external_url = "https://punky-lab.github.io"
gateway = "https://cyan-acute-python-533.mypinata.cloud/ipfs"

# uint256 public constant PunkyBase = 0
# uint256 public constant HeadWhiteCap = 1
# uint256 public constant NeckSparkLab = 2
# uint256 public constant TailZebra = 3
# uint256 public constant BodyBasin = 4

cids = {
    0: "QmbrM5AsRmah4dFiBhasG6fsXmXvB15VbqtdgdkxJR2j3M",
    1: "QmUQzxHFSoDPN3MCrhhLqHP1LRtaj7xCAnAMhJRNeVMwaz",
    2: "QmQNV3HQUKyAzF6cDwgpvXumMrfrasEk9KkMJJdDyeyi47",
    3: "QmUjHMvznFMy2y2aR2NAfDNsDrZuSTPthCtmj7W6mMNsC8",
    4: "QmfA5f949Y2EQyFY7PrUBzsfhR12pB5Ew8mfG4yFPD8SXW",
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
            "image": f"{gateway}/{cids[i]}",
            "name": names[i],
        }
        with open(f"meta/{i}.json", "w") as f:
            json.dump(metadata, f)
