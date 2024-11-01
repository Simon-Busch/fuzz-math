// SPDX-License-Identifier: MIT
// @notice We intentionally want to leave this as floating point so others can use it as a library.
pragma solidity ^0.8.3;

import {MathMasters} from "./MathMasters.sol";

contract Wrapper {
    function mulWad(uint256 x, uint256 y) public pure returns (uint256) {
        return MathMasters.mulWad(x, y);
    }

    function mulWadUp(uint256 x, uint256 y) public pure returns (uint256) {
        return MathMasters.mulWadUp(x, y);
    }

    function sqrt(uint256 x) public pure returns (uint256) {
        return MathMasters.sqrt(x);
    }
}
