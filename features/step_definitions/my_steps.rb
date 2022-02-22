

Given(/^open (.*) browser$/) do |browser_name|

  load_driver
end


  Given(/^visit "([^"]*)" webpage$/) do |url|

$driver.navigate.to(url)
end


Given(/^(.*) save as "([^"]*)" the my$/) do |key, value|
  Dictionary.set(key,value)

end

And(/^click \<\>$/) do

end



And(/^"([^"]*)" click$/) do |text|

click_element(text)
end

When(/^load permisson$/) do

end


And(/^visit "([^"]*)" page$/) do |url|
 visit(url)
end

And(/^"([^"]*)" değerini (.*) olarak kaydedersem$/) do |value, key|
Dictionary.set(key,value)
end
And(/^If I save "([^"]*)" as (.*)$/) do |value, key|
  Dictionary.set(key,value)
end

And(/^"([^"]*)" click and \^"([^"]*)" enter a name$/) do
  pending
end

And(/^"([^"]*)" click  and \^"([^"]*)" enter a lastname$/) do
  pending
end

And(/^(.*) uzunluğunda (.*) metni (.*) olarak kaydedersem$/) do |uzunluk,type, param|

  if(type=="alfabetik")
    rand_value=generate_code(uzunluk.to_i)
  else
    rand_value=rand(max=uzunluk.to_i)
  end

  Dictionary.set(param,rand_value)

end

And(/^If I save (.*) characters long (.*) text as (.*)$/) do |lenght,type,param|
  if(type=="alphabetic")
    rand_value=generate_code(lenght.to_i)
  else
    rand_value=rand(max=lenght.to_i)
  end

  Dictionary.set(param,rand_value)

end


And(/^(.*) öğesine tıklayıp kaydettiğim (.*) ve "([^"]*)" metnini yazarım$/) do |key_element,key, text|

  send_keys(key_element,Dictionary.get(key)+text)
end
And(/^I click on (.*) and type the (.*) I saved and the text "([^"]*)"$/) do |key_element,key, text|
  send_keys(key_element,Dictionary.get(key)+text)
end

And(/^(.*) öğesine tıklayıp "([^"]*)" metnini yazarım$/) do |key, text|

  send_keys(key,text)
end
And(/^I click on (.*) and type the text "([^"]*)"$/) do |key, text|
  send_keys(key,text)
end


And(/^debug$/) do
  p("dfhsdhf")
end


And(/^(.*) öğesi içindeki metni (.*) olarak kaydedersem$/) do |element, key|
p  element=Dictionary.get_element(element)
  Dictionary.set(key,my_finder(element).text)
  p(Dictionary.get(key))
end

And(/^if I save the text inside (.*) as (.*)$/) do |element,key|
  element=Dictionary.get_element(element)
  Dictionary.set(key,my_finder(element).text)
  (Dictionary.get(key))
end

And(/^(.*) değerinin (.*) değerine eşit olduğunu görürüm$/) do |key, key1|

expect(Dictionary.get(key)).to eq Dictionary.get(key1)
end
And(/^I see that the value of (.*) is equal to the value of (.*)$/) do |key, key1|
  expect(Dictionary.get(key)).to eq Dictionary.get(key1)

end


And(/^I wait (\d+) seconds$/) do |value|
  sleep value
end


And(/^I save "([^"]*)" as (.*)$/) do |arg, price|
  pending
end


And(/^save alert message as (.*)$/) do |alert_message|
  Dictionary.set(alert_message,page.driver.browser.switch_to.alert.text)
end

And(/^comfirm alert  message$/) do
  page.driver.browser.switch_to.alert.accept
end

And(/^decline alert  message$/) do
  page.driver.browser.switch_to.alert.dismiss
end
