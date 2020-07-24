require 'pry'
def nyc_pigeon_organizer(data)
  results = data.each_with_object({}) do |(key, value), final_arr|
    value.each do |inn_key, names|
      names.each do |name|
        if !final_arr[name]
          final_arr[name] = {}
        end
        if !final_arr[name][key]
          !final_arr[name][key] = []
        end
        final_arr[name][key].push(inn_key.to_s)
      end
    end
  end
end
