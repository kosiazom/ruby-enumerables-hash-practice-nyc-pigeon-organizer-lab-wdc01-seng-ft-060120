require 'pry'
def nyc_pigeon_organizer(data)
  new_data = { }
  data.each do |key, value|
    value.each do |color, names|
      names.each do |name|
        if !new_data[name] 
       new_data[name] = { }
        end
        if !new_data[name][key]
          new_data[name][key] = [ ]
        end
        new_data[name][key]<< color.to_s
      end
    end
  end
  new_data
end
