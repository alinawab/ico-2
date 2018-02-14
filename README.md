# ico-2
A proposal to make ICOs less scammy

DAICO (Distributed Autonomous ICO)

Main idea: Improve ERC20 specification to allow for the following items
1) monthly disbursements of funds vs. at completion
2) voting for allocation of funds
3) mechanisms to nuke projects that are not performing (I'm thinking the user can leave)

Links to ERC20 standards -> https://theethereum.wiki/w/index.php/ERC20_Token_Standard
original ERC20 proposal from Vitalik Buterin -> https://github.com/ethereum/wiki/wiki/Standardized_Contract_APIs/499c882f3ec123537fc2fccd57eaa29e6032fe4a
post on DAICO by Vitalik Buterin on Ethereum Research + Comments -> https://ethresear.ch/t/explanation-of-daicos/465
discussion on reddit -> https://www.reddit.com/r/ethereum/comments/3n8fkn/lets_talk_about_the_coin_standard/
Incremint ICO, similar idea -> https://incremint.io/

My suggestion is to write it as an EIP (Ethereum Improvement Proposal) using the format below
https://github.com/ethereum/EIPs/blob/master/eip-X.md

// I checked quickly to see if such a proposal has already been submitted, did not find anything but I looked quickly so if someone can take a second look that would be awesome

Link to Ethereum Token Sample Code -> https://www.ethereum.org/token
Link to DAO repo (now defunct) -> https://github.com/slockit/DAO  -- for things to avoid
Link to NATSPEC (for the comments)-> https://github.com/ethereum/wiki/wiki/Ethereum-Natural-Specification-Format

Writing the code , we could write some/all of the following code:
1) Token.sol: ERC20 Token + Monthly Payouts
2) Ballot.sol: to vote a) set the %required as a param) on each allocation
                       b) adjust for drag-along etc for people who do not vote by the deadline
                       c) assign their vote to someone else they trust

this is the best tutorial I have found on smart contracts ->
https://blog.zeppelin.solutions/the-hitchhikers-guide-to-smart-contracts-in-ethereum-848f08001f05

.. ok last point, in writing our code we can use the following audit report (done on Open Zepplin's contracts) to see where we could improve our code
https://github.com/zeppelin-solidity/blob/master/audit/ZeppelinAudit.md
