// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./PaginatedEnumerableSet.sol";

contract Example {
    using PaginatedEnumerableSet for PaginatedEnumerableSet.UintSet;
    PaginatedEnumerableSet.UintSet private set;

    function add(uint256 x) public returns (bool) {
        return set.add(x);
    }

    function remove(uint256 x) public returns (bool) {
        return set.remove(x);
    }

    function contains(uint256 x) public view returns (bool) {
        return set.contains(x);
    }

    function length() public view returns (uint256) {
        return set.length();
    }

    function at(uint256 index) public view returns (uint256) {
        return set.at(index);
    }

    function values() public view returns (uint256[] memory result) {
        result = set.values();
    }

    function subset(
        uint256 start,
        uint256 size
    ) public view returns (uint256[] memory result) {
        result = set.subset(start, size);
    }
}
