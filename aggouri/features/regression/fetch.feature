#encoding: UTF-8
Feature: fetch a project user
  As a user
  I want to pick a project and user
  In order to see the user's info

  Scenario: fetch user
	Given I am logged in
	When I pick project "Αλλο (Χορηγίες)"
	And I click on "Φοιτητές Προγράμματος"
	#And I choose user "fdasf asdfsdfsdf"
	#Then I should see their "Κωδικός ΔΙΑΣ"
	#Then I should be on main
	Then I find link