 require 'json'
def add_values(result, key, value)
  result[key] ||= {}
  result[key][value] ||= 0
  result[key][value] += 1
end

def my_data_process(content_str)
    result = {
        "Gender" => {},
        "Email" => {},
        "Age" => {},
        "City" => {},
        "Device" => {},
        "Order At" => {},
      }
    
  content_str.shift
  content_str.each do |line|
    values = line.split(',')
    add_values(result, "Gender", values[0])
    add_values(result, "Email", values[4].split('@').last)
    add_values(result, "Age", values[5])
    add_values(result, "City", values[6])
    add_values(result, "Device", values[7])
    add_values(result, "Order At", values[9])
  end

#   return JSON.generate(result)
return result.to_json
end

# def _run()
#     input = ["Gender,FirstName,LastName,UserName,Email,Age,City,Device,Coffee Quantity,Order At", "Male,Carl,Wilderman,carl,yahoo.com,21->40,Seattle,Safari iPhone,2,afternoon", "Male,Marvin,Lind,marvin,hotmail.com,66->99,Detroit,Chrome Android,2,afternoon", "Female,Shanelle,Marquardt,shanelle,hotmail.com,21->40,Las Vegas,Chrome,1,afternoon", "Female,Lavonne,Romaguera,lavonne,yahoo.com,66->99,Seattle,Chrome,2,morning", "Male,Derick,McLaughlin,derick,hotmail.com,41->65,Chicago,Chrome Android,1,afternoon"]
#     puts my_data_process(input)
#   end
  
# #   _run()
