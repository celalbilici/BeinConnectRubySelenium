


  Feature: open beinconnect

    Scenario: open beinconnect new

      And If I save 5 characters long alphabetic text as mail
      And If I save "1.00 THB" as expectTotalCharge
      And If I save "This field is not valid.: 'Card number'" as expectAlertMessage

      And visit "https://connect-th.beinsports.com/en" page
      And "subscribe" click
      And "subscription period" click
      And if I save the text inside once_price as firstMonthlyPassPrice
      And "free trial" click
      And I click on firstName and type the text "Celal"
      And I click on lastName and type the text "Bilici"
      And I click on emailOrPhone and type the mail I saved and the text "@gmail.com"
      And I click on password and type the text "Pw1234"
      And "checkbox" click
      And "createAccount" click
      And I wait 15 seconds
      And "infoClose" click
      And if I save the text inside monthlyPass as endMonthlyPassPrice
      And I see that the value of firstMonthlyPassPrice is equal to the value of endMonthlyPassPrice
      And "checkbox" click
      And "payNow" click
      And if I save the text inside totalCharge as EndTrialPrice
      And I see that the value of expectTotalCharge is equal to the value of EndTrialPrice
      And I click on cardHoldersName and type the text "Celal Bilici"
      And I click on cardNumber and type the text "44441234567890123"
      And "expiryMont" click
      And "expiryMonthEnter" click
      And "expiryYears" click
      And "expiryYearsEnter" click
      And I click on cardVerifciationCode and type the text "123"
      And "paymentConfirmButton" click
      And save alert message as mesage
      And comfirm alert  message

      And debug







