// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract PunkyNFT is ERC1155 {
    string public name = "Punky";
    string public symbol = "PUNKY";

    uint256 public constant PunkyBase = 0;
    uint256 public constant HeadWhiteCap = 1;
    uint256 public constant NeckSparkLab = 2;
    uint256 public constant TailZebra = 3;
    uint256 public constant BodyBasin = 4;

    constructor() ERC1155("https://cyan-acute-python-533.mypinata.cloud/ipfs/QmNeQxytHa5BfSXANUnJ3FWGhKryTe8mxReLFhpyn9HQqE/{id}.json") {}

    function mintTrait(uint256 id) public {
        _mint(msg.sender, id, 1, "");
    }

    function uri(uint256 _tokenid) override public pure returns (string memory) {
        return string(
            abi.encodePacked(
                "https://cyan-acute-python-533.mypinata.cloud/ipfs/QmNeQxytHa5BfSXANUnJ3FWGhKryTe8mxReLFhpyn9HQqE/",
                Strings.toString(_tokenid),".json"
            )
        );
    }

    function checkBalance(uint256 id) public view returns (uint256) {
        return super.balanceOf(msg.sender, id);
    }

    function balanceOf(address from, uint256 id) override public view returns (uint256) {
        return super.balanceOf(from, id);
    }

    // TODO
    uint256 _equip = 0;
    function equip(uint256 id) public {
        _equip = id;
    }
}