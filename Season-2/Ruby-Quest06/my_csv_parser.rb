def my_csv_parser(content_str,separator)
    result = []
    for i in content_str.each_line
        # content_str.each_line do |i|
      row = i.chomp.split(separator)
     result <<  row if row.length > 1
    end
  return result
end
  
