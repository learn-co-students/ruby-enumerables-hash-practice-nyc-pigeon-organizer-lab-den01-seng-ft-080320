require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  
  new_data = {}
  data.each {|key, value|
    value.each {|key_1, value_1|
      value_1.each {|element|
        if !new_data[element]
          new_data[element] = {}
        end
        if !new_data[element][key]
          new_data[element][key] = []
        end
        new_data[element][key] << (key_1.to_s)
      }
    }
  }
  p new_data
end



