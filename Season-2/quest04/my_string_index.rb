def my_string_index(param_1, param_2)
   param_1.each_char.with_index do |str, i|
        if (str == param_2)
            return i
        end 
end
return -1
end
