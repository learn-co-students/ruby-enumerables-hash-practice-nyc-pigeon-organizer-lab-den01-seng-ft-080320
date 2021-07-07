require 'pry'
def nyc_pigeon_organizer(data)
  new_hash = {

  }
  data.each do |data_type, data_value|
    data_value.each do |color, names|
      names.each do |name|
        if !new_hash[name]
          new_hash[name] = {}
        end
        if !new_hash[name][data_type]
          new_hash[name][data_type] = []
        end
        new_hash[name][data_type] << color.to_s
      end
    end
  end
  new_hash
end
