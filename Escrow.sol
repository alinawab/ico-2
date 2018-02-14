pragma solidity 0.4.19;

contract Escrow {
  address buyer;
  address seller;
  address arbiter;
  uint amount;

  function Escrow(address _seller, address _arbiter, uint _amount) public {
    // In this simple example, the person sending money is the buyer and sets up the initial contract
    buyer = msg.sender;
    seller = _seller;
    arbiter = _arbiter;
    amount = _amount;
  }

  function payoutSeller() returns (bool){
      require(msg.sender == buyer || msg.sender ==arbiter);
      // new function transfer instead of send used here to transfer to the seller
      seller.transfer(this.balance);
      return true;
  }

  function payoutSeller2() public returns (bool) {
      if (msg.sender != buyer || msg.sender != arbiter){
          throw;
      } else {
           seller.transfer(this.balance);
           return true;
      }
  }

 function refundBuyer() returns (bool){
     require(msg.sender == seller || msg.sender ==arbiter);
      // new function transfer instead of send used here to transfer to the seller
      buyer.transfer(this.balance);
      return true;
 }
    // if a function is going to be able to accept ether, is has to be payable
    function fund() payable returns (bool){
        require(msg.value == amount && msg.sender == buyer);
        return true;
    }
 // fallback function - accept payment from anyone
 //   function() payable {};

//   function release() {
//     if (msg.sender == agent)
//       suicide(seller); // Send all funds to seller
//     else
//       throw;
//   }
//   function cancel() {
//     if (msg.sender == agent)
//       suicide(buyer); // Cancel escrow and return all funds to buyer
//     else
//       throw;
//   }
}
