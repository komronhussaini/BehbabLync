pragma solidity ^0.4.2;

contract SolidiLync {

	struct Post {
			address userAdress;
			string title;
			string description;
			string link;
			uint256 rating;
	}

	uint256 public postCounter;

	mapping(uint256 => Post) allPosts;

	function SolidiLync() {
		postCounter = 0;
		allPosts[postCounter].title = "lksandlfknlkfsalknlsaknfdlk";
		allPosts[postCounter].description = "ksandlfknlaksflkandfs";
		allPosts[postCounter].link = "http://reddit.com";
		postCounter++;
	}


	function newLync(string _title, string _description, string _link)  {
		allPosts[postCounter].userAdress = msg.sender;
		allPosts[postCounter].title = _title;
		allPosts[postCounter].description = _description;
		allPosts[postCounter].link = _link;
		postCounter++;
	}

	function getLyncTitle(uint256 _postNumber)returns (string _title){
			_title = allPosts[_postNumber].title;
			return _title;
	}

	function getDescription(uint256 _postNumber) returns (string _description){
		_description = allPosts[_postNumber].description;
		return _description;
		}

	function getLync(uint256 _postNumber) returns (string _link){
		_link = allPosts[_postNumber].link;
			return _link;
	}

	function getRating (uint256 _postNumber) returns (uint256 _rating){
		_rating = allPosts[_postNumber].rating;
		return  _rating;
	}


}
