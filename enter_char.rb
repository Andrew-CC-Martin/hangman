module Enter
    module_function
    def enter_char word_array, placeholder, lives
        any_match = false
        puts "Please enter a character: "
        input = gets.chomp
        input.downcase!
        word_array.each_with_index do |char,index|
            if input == char then 
                placeholder[index]=char 
                any_match = true
            end
        end
        if any_match = false then
            lives -=1
        end
        lives, placeholder
    end
end




