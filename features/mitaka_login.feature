#First feature to log in to the website

Feature: Selenium server log in to the website
  
  In order to navigate mitaka website on headless browser I need connect to phantomjs server. To do so I need to know th IP and port used by the server. Having working connection to phantom server I can browse to mitaka website. Using my login details: user_name and password I can log into the system.

  Scenario: script connect to the phantomjs server
    Given I have server_ip
    And I have server_port
    Then 
  
  
  
  Scenario: loger open mitaka website
    Given a loger
    When loger open mitaka_website
    Then the title is "Login - thebigword gms"
