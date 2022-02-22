
def my_finder text

  if text[0] == '/' or text[0] == '('

    return find(:xpath, text)

  elsif text.include? "#" or text.include? "[" or text.include? "."
    begin
      return find(text)
    rescue
      $!
    end
  else

    begin
      Timeout.timeout(2) do
        return find(:xpath, "//*[contains(text(),'#{text}')]", visible: true)
      end
    rescue
      source = page.html
      cond = source.split(">" + text + "<")
      if cond.count == 2
        tag = cond[0].split("<").last
        tag = tag.split[0]

        if cond[0][cond[0].length - 1] == '"'
          attr = cond[0].split('<').last
          attr = attr.split('="').last
          attr = attr.split.last
          return find(:xpath, "//#{tag}[@#{attr}='#{text}']", visible: true)
        else
          attr = cond[0].split("<").last
          unless attr.include? "=\""
            return find(:xpath, "//#{tag}[contains(text(),'#{text}')]", visible: true)
          else
            key = attr.split('="')[0].split[1]
            value = attr.split(key)[1].split('"')[1]
            return find(:xpath, "//#{tag}[@#{key}='#{value}'][contains(text(),'#{text}')]", visible: true)
          end
        end
      else

        attr_name = ['id', 'name', 'class', 'href', 'data-title', 'text-area', 'text', 'data-dismiss', 'style', 'title', 'type', 'placeholder', 'value', 'list', 'dropzone', 'draggable', 'download', 'form', 'headers']
        i = 0
        attr_name.each do |attribute|
          @element = attribute + '="' + text + '"'
          break if source.include? @element
          i += 1
          next if i < attr_name.count
          raise('could not find :' + @element)
        end
        return find(:xpath, "//*[@#{@element}]", visible: true)
      end

    end

  end
end

