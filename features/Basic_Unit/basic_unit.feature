Feature: Search for an UBS

	In order to get the main information about the ubs
	As an user
	I want to search an UBS by name

	Scenario: Seaching an ubs with an invalid name
	  Given I am on the search page
	  When I write "Whatever"
	  And press the "search" button
	  Then I shoul see a message "There is no basic unit with the given name"



