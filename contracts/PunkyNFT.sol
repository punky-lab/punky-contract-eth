// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract PunkyDemoToken is ERC1155 {
    uint256 public constant PunkyBase = 0;
    uint256 public constant HeadWhiteCap = 1;
    uint256 public constant NeckSparkLab = 2;
    uint256 public constant TailZebra = 3;
    uint256 public constant BodyBasin = 4;

    constructor() ERC1155("https://cyan-acute-python-533.mypinata.cloud/ipfs/QmPAeeHhYtp6Us9pcUVhxMKJ1ZX4qPs4WQPvqhdSkYmhSn/{id}.json") {
        _mint(msg.sender, PunkyBase, 10**10, "");
        _mint(msg.sender, HeadWhiteCap, 10**10, "");
        _mint(msg.sender, NeckSparkLab, 10**10, "");
        _mint(msg.sender, TailZebra, 10**10, "");
        _mint(msg.sender, BodyBasin, 10**10, "");
    }

    function uri(uint256 _tokenid) override public pure returns (string memory) {
        return string(
            abi.encodePacked(
                "https://cyan-acute-python-533.mypinata.cloud/ipfs/QmPAeeHhYtp6Us9pcUVhxMKJ1ZX4qPs4WQPvqhdSkYmhSn/",
                Strings.toString(_tokenid),".json"
            )
        );
    }
}