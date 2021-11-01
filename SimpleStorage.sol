// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage {
    uint256 public favoriteNumber;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    //People public person = People({favoriteNumber: 2, name: "Kadeem"});

    People[] public people;

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public returns (uint256) {
        favoriteNumber = _favoriteNumber;
        return _favoriteNumber;
    }

    // view, pure -> dont have to make a transaction
    // pure is to do math
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
