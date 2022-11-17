pragma solidity >=0.6.0 <0.9.0;

contract SimpleStorage{
    int256 public favoriteNumber;

    function store(uint256 _data) public {
        favoriteNumber=_data;
    }
      
    //view : just view data from the BC
    //pure: use when doing some type of math operation  
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }
}