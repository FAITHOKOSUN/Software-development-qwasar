def my_levenshtein(param_1, param_2)
    if param_1.length != param_2.length
       return -1
    end
    count = 0
    param_1.chars.each_with_index do |ch, index|
        if ch != param_2[index]
            count += 1
        end
    end
    return count

end
# param_1 = "ACCAGGG"
# param_2 = "ACTATGG"

# diff =  my_levenshtein(param_1, param_2)
# puts diff

