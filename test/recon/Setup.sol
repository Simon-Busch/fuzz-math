
// SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

import {BaseSetup} from "@chimera/BaseSetup.sol";

import "src/MathMasters.sol";
import "src/Wrapper.sol";

abstract contract Setup is BaseSetup {

    Wrapper wrapper;
    uint256 internal constant WAD = 1e18;

    function setup() internal virtual override {
      wrapper = new Wrapper();
    }
}
