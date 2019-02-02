pragma solidity ^0.4.2;

contract test {
 
  struct Asset  {
   string nameOfAsset;
   string description;
   string originalEmail;
   address ownerAddress;
   uint worth;
   uint  id ;
 
 
}

 mapping(uint => Asset) assetStore;  //key is uuid

 
function createAsset(string name, string description,string owner,address receivingAddress,uint worth,uint uuid) public {
    uint id=1234;
    assetStore[id] = Asset(name, description,owner,receivingAddress,worth,id);

}

 function allAssets() returns (mapping(uint=>Asset)){
     return assetStore;
 }

function getAsset(uint id) public returns (string ,string,string,address,uint,uint){
     return (assetStore[id].nameOfAsset,assetStore[id].description,assetStore[id].originalEmail,assetStore[id].ownerAddress,assetStore[id].worth,assetStore[id].id);
 }

function random() private view returns (uint8) {
       return uint8(uint256(keccak256(block.timestamp, block.difficulty))%251);
   }

}
