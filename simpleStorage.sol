pragma solidity >=0.6.0 <0.9.0;

contract SimpleStorage{
    int256 public favoriteNumber;

    struct People {
        string name;
        uint256 favoriteNumber;
    }

    People[] public people;

    People public person = People({favoriteNumber:69,name:"khaled"});

    function store(uint256 _data) public {
        favoriteNumber=_data;
    }
      
    //view : just view data from the BC
    //pure: use when doing some type of math operation  
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    //memory: only saved during execution or function call
    //storage: will be saved after execution
    function addPerson() public (string memory _name,uint256 _favoriteNumber) {
        push.people(People(name: _name , favoriteNumber: _favoriteNumber));
    }
}