def my_roman_numerals_converter(number)
    rom =[ ["M" , 1000],
    ["CM" , 900],
    ["D" , 500],
    ["CD" , 400],
    ["C" , 100],
    ["XC" , 90],
    ["L" , 50],
    ["XL" , 40],
    ["X" , 10],
    ["IX" ,9],
    ["V" , 5],
    ["IV" , 4],
    ["I" , 1]
]
    roman_fig = ""
    rom.each do |roman, value|
        while number >= value
            roman_fig += roman
            number -= value
        end
    end

    return roman_fig
end

#  print my_roman_numerals_converter(79)
# puts rom_num(14)
# puts rom_num(2023)

