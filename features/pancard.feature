Feature: PANCARD TESTING

  Scenario: USER GO TO APPLY PANCARD PAGE
    Given User goes to pancard form page
    Then  User in form filling page

  Scenario: USER ENTERS APPLICANT NAME
    Given User goes to pancard form page
    Then  User selects title
    Then  User enter special char and number as first name "#./$&*1234@"
    Then  User should see the error message
    Then  User enter string as first name "name"
    Then  User enter special char and number as middle name "#./$&*1234@"
    Then  User should see the error message
    Then  User enter string as middle name "middle"
    Then  User enter special char and number as last name "#./$&*1234@"
    Then  User should see the error message
    Then  User enter string as last name "last"
    Then  User select date "08-09-2016"

Scenario: USER ENTERS FATHER'S NAME
	Given User goes to pancard form page
    Then  User enter special char and number as father's first name "#./$&*1234@"
    Then  User should see the error message
    Then  User enter string as father's first name "name"
    Then  User enter special char and number as father's middle name "#./$&*1234@"
    Then  User should see the error message
    Then  User enter string as father's middle name "middle"
    Then  User enter special char and number as father's last name "#./$&*1234@"
    Then  User should see the error message
    Then  User enter string as father's last name "last"

Scenario: USER SELECT GENDER
	Given User goes to pancard form page
	Then  User select gender as male
	Then  User selects i have any other name as No

Scenario: USER HAVE ANOTHER NAME
	Given User goes to pancard form page
	Then  User selects i have any other name as Yes
	Then  User enter special char and number as another first name "#./$&*1234@"
	Then  User should see the error message
    Then  User enter string as another first name "name"
    Then  User enter special char and number as another middle name "#./$&*1234@"
	Then  User should see the error message
    Then  User enter string as another middle name "middle"
    Then  User enter special char and number as another last name "#./$&*1234@"
    Then  User should see the error message
    Then  User enter string as another last name "last"
    Then  User enter name want to printed as "my card"


Scenario: USER ENTER COMMUNICATION DETAILS RESIDENCE
	Given User goes to pancard form page
	Then  User selects i have Residence address
	Then  User enter block special char and number as "NO:1"
	Then  User enter building name as "Building 1"
	Then  User enter Street name as "Street 1"
	Then  User enter area name as "area 1"
	Then  User enter state name as Tamil Nadu
	Then  User enter city name as "chennai"
	Then  User enter pincode name as "6000042"


Scenario: USER ENTER COMMUNICATION DETAILS OFFICE
	Given User goes to pancard form page
	Then  User selects i have office address
	Then  User selects proof address as Employer Certificate carrying Office Address
	Then  User enter name of office as "tech 42"
	Then  User enter office building name as "Building 1"
	Then  User enter office Street name as "Street 1"
	Then  User enter office area name as "area 1"
	Then  User enter office state name as Tamil Nadu
	Then  User enter office city name as "chennai"
	Then  User enter office pincode name as "6000042"

Scenario: USER ENTER CONTACT DETAILS
	Given User goes to pancard form page
	Then  User enter area code as special character "#./$&*1234@.45/789"
	Then  User should see the error message Please enter the correct value
	Then  User enter area code as character "abcd"
	Then    User should see the error message Please enter the correct value
	Then  User enter area code "12345"
	Then  User enter mobile number as special character "#./$&*1234@56789"
	Then    User should see the error message Please enter the correct value
	Then  User enter mobile number as character "abcdef"
	Then    User should see the error message Please enter the correct value
	Then  User enter mobile number as "123456789"
	Then  User enter email id as special character "#./$&*1234@56789"
	Then    User should see the error message Please enter the correct value
	Then  User enter email id as character "abcdef"
	Then    User should see the error message Please enter the correct value
	Then  User enter email id "abcd@gmail.com"
	Then  User enter aadhar no as special character "#./$&*1234@56789"
	Then  User should see the error message
	Then  User enter aadhar no as character "abcde"
	Then    User should see the error message Please enter the correct value
	Then  User enter aadhar no "123456799"

Scenario: USER ENTER DOCUMENT DETAILS
	Given User goes to pancard form page
	Then  User selects proof of date of birth Passport
	Then  User selects proof of identity Passport

Scenario: USER ENTER INCOME DETAILS
	Given User goes to pancard form page
	Then  User selects salary
	Then  User selects business or profession
	Then  User selects income from house property
	Then  User selects capital gains
	Then  User selects income from other sources
	Then  User selects business or profession as "Engineering"
	Then  User selects i agree