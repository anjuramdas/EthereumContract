pragma solidity ^0.4.18;
contract ReadAccess {
    bytes32 reader;
    bytes32[] public readerList;
    string y = "yes";
    string answer="no";
    string hash = "QmRbiMiUC6LWpzHQmHuriWECjc2itS7T9QwDiHmUvRT5LJ";
  
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
    
    function result() public constant returns(string) {
       if (compare(answer, y)) {
	  return hash;
       }
       else {
         return answer;
       }   
    
   }
    function compare (string a, string b) view returns (bool){
       return keccak256(a) == keccak256(b);
   }

}
