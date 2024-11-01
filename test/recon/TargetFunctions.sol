
// SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

import {BaseTargetFunctions} from "@chimera/BaseTargetFunctions.sol";
import {BeforeAfter} from "./BeforeAfter.sol";
import {Properties} from "./Properties.sol";
import {vm} from "@chimera/Hevm.sol";

abstract contract TargetFunctions is BaseTargetFunctions, Properties, BeforeAfter {
  function wrapper_mulWad(uint256 x, uint256 y) public {
    assert(x*y/WAD == wrapper.mulWad(x, y));
  }

  function wrapper_mulWadUp(uint256 x, uint256 y) public {
    assert((x*y)/WAD == wrapper.mulWadUp(x, y));
  }

  function wrapper_mulWadUp_revert(uint256 x, uint256 y) public {
    require(y > 0 || x <= type(uint256).max / y);
    try wrapper.mulWadUp(x, y) {
      assert(false);
    } catch {
      assert(true);
    }
  }

  function wrapper_sqrt(uint256 x) public {
    assert(x**x == wrapper.sqrt(x));
  }
}
