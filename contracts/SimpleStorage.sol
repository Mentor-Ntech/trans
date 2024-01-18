// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage {

    uint256  favoriteNumber;
    //People public person = People({favoriteNumber: 2, name: "Dan", color:"red", fav_friend: "Umar", age: 30});

    struct People {
        uint256 favoriteNumber;
        string name;
        string color;
        string fav_friend;
        uint256 age;
    }

    //ARRAY
   // uint256[] public favoriteNumbersList;
    People[] public people;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
        //favoriteNumber = favoriteNumber +10;
        uint256 testVar = 5;
    }

    //View, pure
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber, string memory _color, string memory _fav_friend, uint256 _age) public {
        People memory newPerson = People({favoriteNumber:_favoriteNumber, name:_name, color: _color, fav_friend: _fav_friend, age: _age});
        people.push(newPerson);
    }
}