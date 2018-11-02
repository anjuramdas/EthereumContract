pragma solidity ^0.4.18;
contract ReadAccess {
    bytes32 reader;
    bytes32[] public readerList;
    bytes32 answer="no";
  
    function ReadAccess(bytes32[] readerNames) public { //constructor
    readerList = readerNames;
    }

    function read_request(bytes32 name) public {
      reader = name;
      answer="no";
      for(uint i = 0; i < readerList.length; i++) {
      if (readerList[i] == reader) {
        answer = "yes";
      }
     }
     }
    
    function result() public constant returns(bytes32) {
     return answer;
   }   
}
