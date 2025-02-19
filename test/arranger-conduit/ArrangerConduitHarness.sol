// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import { ArrangerConduit } from "../../src/ArrangerConduit.sol";

contract ArrangerConduitHarness is ArrangerConduit {

    constructor()
        ArrangerConduit() {}

    function __setFundRequestStatus(uint256 fundRequestId, ArrangerConduit.StatusEnum status)
        external
    {
        fundRequests[fundRequestId].status = status;
    }

    function __setWithdrawableFunds(bytes32 ilk, address asset, uint256 amount)
        external
    {
        withdrawableFunds[ilk][asset] = amount;
    }

    function __setTotalWithdrawableFunds(address asset, uint256 amount)
        external
    {
        totalWithdrawableFunds[asset] = amount;
    }

}
