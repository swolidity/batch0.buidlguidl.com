//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "./BatchRegistry.sol" as BatchRegistry;

interface IBatchRegistry {
	function checkIn() external;
}

contract CheckIn {
	address batchRegistryAddress;

	constructor(address _batchRegistryAddress) {
		batchRegistryAddress = _batchRegistryAddress;
	}

	function checkMeIn() public {
		IBatchRegistry(batchRegistryAddress).checkIn();
	}
}
