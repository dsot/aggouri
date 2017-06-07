#encoding: UTF-8
Feature: Log in with ldap
  As a user
  I want to give my username and password
  In order to log in to epos/users

  Scenario: log in
    Given I visit the login page
	When I log in with "dsot" and "password"
	Then I should be on main page