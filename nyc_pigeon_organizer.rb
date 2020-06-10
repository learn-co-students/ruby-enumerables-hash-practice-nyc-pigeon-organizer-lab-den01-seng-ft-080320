require 'pry'

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(data)
  pigeon_names = []
  data.each do |k, v|
    data[k].each do |k2, v2|
      pigeon_names << data[k][k2]
    end
  end
  pigeon_names = pigeon_names.flatten.uniq
  pigeon_list = {}
  pigeon_names.each do |name|
    pigeon_list[name] = {}
    data.each do |k, v|
      pigeon_list[name][k] = [] 
    end
  end
  pigeon_names.each do |name|
    data.each do |attribute1, specific1|
      data[attribute1].each do |specific2, names2|
        if data[attribute1][specific2].any? { |pigeon| pigeon == name } == true
          pigeon_list[name][attribute1].push(specific2.to_s)
        end
      end
    end
  end
  pigeon_list
end


'''def nyc_pigeon_organizer(data)
  pigeon_names = []
  data.each do |k, v|
    data[k].each do |k2, v2|
      pigeon_names << data[k][k2]
    end
  end
  pigeon_names = pigeon_names.flatten.uniq
  pigeon_list = {}
  pigeon_names.each do |name|
    data.each do |k, v|
      pigeon_list[name] = {k => []}
      #binding.pry
    end
  end
  pigeon_list
end'''

puts nyc_pigeon_organizer(pigeon_data)
