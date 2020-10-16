// SPDX-License-Identifier: MIT
pragma solidity 0.7.1;

struct Traits {
  uint8 economicFreedom;
  uint8 politicalFreedom;
  uint8 personalFreedom;
  uint8 economicGrowth;
  uint8 militarySpending;
  uint8 technologyInvestment;
  uint32 gdp;
  uint32 population;
  uint32 militaryStrength;  
}

struct Nation {
  uint8 share;
  string name;
  Traits traits;
  address owner;
  uint256 collateral;
}

struct AppStorage {
  mapping(uint256 => Nation) nations;
  mapping(string => bool) nationNamesUsed;
  uint32 totalSupply;
  address contractOwner;
  address totalCollateral;
}