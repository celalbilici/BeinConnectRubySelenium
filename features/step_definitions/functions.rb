


def save_parameter(key,value)
  Dictionary.set(key,value)
end

def get_parameter(key)
  Dictionary.get(key)
end

def get_element(key)
  Dictionary.get_element(key)
end


def click_element(key)
  element=Dictionary.get_element(key)
  if(element==nil)
    my_finder(key).click
  else
    my_finder(Dictionary.get_element(key)).click
  end

end

def send_keys(key,text)

  my_finder(Dictionary.get_element(key)).send_keys(text)
end

def save_element_text(element_key,save_element_text_key)
Dictionary.set(save_element_text_key ,my_finder(Dictionary.get_element(element_key)).text)
end

def verify_values(key_valu1,key_value2)



end


def generate_code(number)
  charset = Array('a'..'z')
  Array.new(number) { charset.sample }.join
end