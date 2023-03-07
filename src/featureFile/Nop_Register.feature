Feature: Nopcommerce Registration

As a User I want to check the Register functionality of Nopcommerce

Background: I am on Nopcommerce Registration page
Given I open the Google Chrome Browser
When  I open the Url https://demo.nopcommerce.com/register
Then I am on Nopcommerce Registration page

Scenario Outline: I should not be able to register with invalid data on mandatory field (*) of registration page
When I enter first name"<First Name>"
And I enter last name "<Last Name>"
And I enter email address "<Email>"
And I enter password "<Password>"
And I enter cofirm password "<Confirm Password>"
And I click on register button
Then I can see an error message "<Error Message>"
And I am not able to register

  Examples:
    | First Name  | Last Name | Email               | Password    | Confirm Password    | Error Message                             |
    | " "         | Watson    | watson1@gmail.com   |  432123     | 432123              |Please enter First Name                    |
    | Emma        | ""        | watson1@gmail.com   |  432123     | 432123              |Please enter Last Name                     |
    | Emma        | Watson    | ""                  |  432123     | 432123              |Please enter Email address                 |
    | Emma        | Watson    | watson1@gmail.com   |    ""       | 432123              |Password is required                       |
    | Emma        | Watson    | watson1@gmail.com   |  432123     | ""                  |Confirm Password is required               |
    | Emma        | Watson    | watson1@gmail.com   |  432153     | 432123              |Password and Confirm Password do not match |
    | Emma        | Watson    | watson1@gmail.com   |  4321       | 4321                |Minimum 6 character password required      |
    | " "         | ""        |""                   | ""          |""                   |Mandatory(*) field is required             |

Scenario:  I should be able to select any radio button from Gender Label of Your Personal Detail Section
Given I am  on Gender label of Your personal detail section
When I select "Male" radio button
And I select "Female" radio button
Then I am able to select any one of the radio button

Scenario Outline: I should be able to select Day, Month and Year from drop down list of Date of birth field
Given I am on Date of Birth field of your Personal Detail section
When I select day "<Day>"
And I select month "<Month>"
And I select Year "<Year>"
Then I am able to select Day, Month and Year from drop down list

  Examples:
    | Day  | Month    | Year    |
    | 11   | November | 1988    |

Scenario: I should be able to check and uncheck the Newsletter box on options selection
Given I am on Newsletter label on Options section
When I click on Newsletter checkbox
And I again click on Newsletter Checkbox
Then I was able to check and uncheck the box next to Newsletter label

Scenario: I should be able to register with valid mandatory (*) field data on registration page
When I enter First Name "Emma"
And I enter Last Name "Watson"
And I enter Email "watson1@gmail.com"
And I enter Password "432156"
And I enter Confirm Password "432156"
And I click on Register button
Then I was able to register successfully
