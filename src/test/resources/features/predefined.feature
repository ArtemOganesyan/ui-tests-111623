@predefined
Feature: Smoke steps

#  @predefined1
#  @regression
#  Scenario: Predefined steps for Google
#    Given I open url "https://google.com"
#    Then I should see page title as "Google"
#    Then I type "Cucumber" into element with xpath "//input[@name='q']"
#    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
#    # Then I wait for 2 sec
#    Then I wait for element with xpath "//*[@id='res']" to be present
#    Then I should see page title contains "- Google Search"
#    Then element with xpath "//*[@id='res']" should contain text "Cucumber"

  @test-scenario
  Scenario: Test scenario for xpath validations
    Given I open url "http://ask-stage.portnov.com"
    Then I type "teacher@gmail.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "12345Abc" into element with xpath "//*[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    And I wait for element with xpath "//h5[contains(text(), 'Quizzes')]" to be present
    And I click on element with xpath "//h5[contains(text(), 'Quizzes')]"
    And I wait for element with xpath "//button/span[contains(text(), 'Create New Quiz')]" to be present
    And I click on element with xpath "//button/span[contains(text(), 'Create New Quiz')]"
    And I wait for element with xpath "//input[@formcontrolname='name']" to be present
    And I type "Test quiz" into element with xpath "//input[@formcontrolname='name']"
    And I click on element with xpath "//mat-icon[contains(text(), 'add_circle')]/../.."
    And I click on element with xpath "//mat-radio-button[3]"
    And I type "Test question" into element with xpath "//textarea[@formcontrolname='question']"
    And I wait for 1 sec
    And I click on element with xpath "(//textarea[@formcontrolname='option'])[1]/../../../../..//input[@type='checkbox']/.."
    And I type "Option 1" into element with xpath "(//textarea[@formcontrolname='option'])[1]"
    And I type "Option 2" into element with xpath "(//textarea[@formcontrolname='option'])[2]"
    And I create 5 options
    And I choose 5 as correct option
    And I move question slider 3 step to the "right"
    Then I wait for 3 sec

  Scenario: Test scenario for change password
    Given I open url "http://ask-stage.portnov.com"
    Then I type "meghakolte1990@gmail.com" into element with xpath "//input[@id='mat-input-0']"
    Then I type "demo@123" into element with xpath "//input[@type='password']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for element with xpath "//*[contains(text(),'Settings')]" to be present
    Then I click on element with xpath "//*[contains(text(),'Settings')]"
    Then I click on element with xpath "//button[@class='mat-raised-button mat-primary']"
    Then I type "demo@123" into element with xpath "//input[@placeholder='Password']"
    Then I type "welcome@90" into element with xpath "//input[@placeholder='New Password']"
    Then I type "welcome@90" into element with xpath "//input[@placeholder='Confirm New Password']"
    Then I click on element with xpath "//button[@class='mat-button']"
    Then I wait for 3 sec

  @test-scenario
  Scenario: Test scenario for Changing User's Group in User's Management
    Given I open url "http://ask-stage.portnov.com"
    And element with xpath "//h3[contains(text(),'Assessment Control')]/.." should be displayed
    Then I type "arthy123@gmail.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "portnov@1" into element with xpath "//*[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    And I take screenshot
    Then I wait for 3 sec
    Then I click on element with xpath "//h5[contains(text(),'Use')]"
    Then I click on element with xpath "//div[contains(text(),'Students')]"
    Then I click on element with xpath "//h4[contains(text(),'vikram')]"
    Then I click on element with xpath "(//span[@class='mat-button-wrapper'])[1]"
    Then I wait for 3 sec
    Then element with xpath "//div[@role='menu']" should be displayed
    Then I click on element with xpath "//*/button/*[contains(text(),'group')]/.."
    Then I clear element with xpath "//*[@formcontrolname='name']"
    Then I type "AA22" into element with xpath "//*[@formcontrolname='name']"
    Then I wait for 3 sec
    Then I click on element with xpath "//span[contains(text(),'Change')]"
    Then I wait for 3 sec
    Then element with xpath "//td[contains(text(),'AA22')]" should be displayed
    Then I wait for 3 sec

    @registration
    Scenario: Registration tests
      Given I open url "http://ask-stage.portnov.com/#/registration"
      Then I type "John" into element with xpath "//input[@placeholder='First Name']"
      Then I type "Shery" into element with xpath "//input[@placeholder='Last Name']"
      Then I type "fakeemail_testuser@gmail.com" into element with xpath "//input[@placeholder='Email']"
      Then I type "111222" into element with xpath "//input[@placeholder='Group Code']"
      Then I type "12345Abc" into element with xpath "//input[@placeholder='Password']"
      Then I type "12345Abc" into element with xpath "//input[@placeholder='Confirm Password']"
      Then I click on element with xpath "//span[contains(text(),'Register Me')]"
      Then I confirm user account with email "fakeemail_testuser@gmail.com"
      And I take screenshot
      Then I wait for 3 sec
