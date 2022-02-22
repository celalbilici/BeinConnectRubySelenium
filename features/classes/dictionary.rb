class Dictionary

 def self.new_hash
   @Hash=Hash.new
 end

  def self.set(key,value)
    @Hash[key]=value
  end

  def self.get(key)
    return @Hash[key]
  end
def self.loadElements
  @elements=JSON.parse(File.open("features/elements.json").read)
end
   def self.get_element(key)
     return @elements[key]
   end
  # def self.click_Element(key)
  #   find(Dictionary.loadElements[""+key+""], wait: 10).click
  #
  #
  # end

"tretretret {the mail} bdfhgsdhdgh"
  # def self.replace_saved_parameter(text)
  #   if(text.include?("{the "))
  #
  #    return text.gsub(text.split("{the ")[1].split("}")[0], get(text.gsub(text.split("{the ")[1].split("}")[0]))).gsub("{the ","").gsub("}","")
  #   else
  #     return text
  #   end
  # end
end