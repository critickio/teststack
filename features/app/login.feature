Feature:          Login
                  As a user
                  I  want to  login on student platform
                  In order to start learining on course

Background:
                  Given I am on login page

@android_test
Scenario Outline: preview the application from my applications

                  When  <user_type> user login to platform
                  Then  I should see <status>

Examples:        students for different courses

                  | user_type       |  status       |
                  | "single_course" |  "welcome"    |
