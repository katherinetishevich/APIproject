Feature: UsersFeature
	In order to avoid errors with Reqres.in users api

@regression @Reqres.in @GetRequest @ListUsers @API @Positive
Scenario: 'Get all users'from 2 page api call with valid request returns list users
	When I get all users from 2 page(-s) via Reqres.in api
	Then I see that 200 status code was returned in response
	And I see that list users from all page was returned in response

	@regression @Reqres.in @GetRequest @ListUsers @API @Negative
Scenario: 'Get all users'from 100 page api call with valid request returns list users(not valid)
	When I get all users from 100 page(-s) via Reqres.in api
	Then I see that 200 status code was returned in response
	And I see that list users from all page was returned in response

	@regression @Reqres.in @GetRequest @ListUsers @API  @Negative
Scenario: 'Get all users'from 2-3 page api call with valid request returns list users(not valid)
	When I get all users from 2-3 page(-s) via Reqres.in api
	Then I see that 200 status code was returned in response
	And I see that list users from all page was returned in response

@regression @Reqres.in @PostRequest @API @Positive
Scenario: I can create new user on reqres.in api
Given I have created user with '<Kate>' and '<trainee>'
When I create new user prepered via Reqres.in api
Then I see that 201 status code was returned in response
And I get all  users from all page(-s) was returned in response
And I see that created user is returned in users list

@regression @Reqres.in @PostRequest @API @Negative
Scenario: I can create new user on reqres.in api with not valid data(numbers)
Given I have created user with '<Kate123>' and '<trainee2020>'
When I create new user prepered via Reqres.in api
Then I see that 201 status code was returned in response
And I get all  users from all page(-s) was returned in response
And I see that created user is returned in users list

@regression @Reqres.in @PostRequest @API @Negative
Scenario: I can create new user on reqres.in api with not valid data(symbols)
Given I have created user with '<Kate:)>' and '<trainee!>'
When I create new user prepered via Reqres.in api
Then I see that 201 status code was returned in response
And I get all  users from all page(-s) was returned in response
And I see that created user is returned in users list


@regression @Reqres.in @DeleteRequest @API @Positive
Scenario: I can delete user on reqres.in api
When I delete user on Reqres.in api
Then I see that 204 status code was returned in response


@regression @Reqres.in @PutRequest @API @Positive
Scenario: I can update user on reqres.in api
Given I have user with '<Kate>' and '<trainee>' data
When I update user data prepered via Reqres.in api
Then I see that 200 status code was returned in response
And I see that updated data of this user was returned in response


