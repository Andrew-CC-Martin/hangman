method Create
    module_function
    def create_word
        dictionary_array = []
        dictionary = File.open('dictionary.txt')
        dictionary_array = dictionary.readlines.chomp

        dict_array = []
        File.open('dictionary.txt').each do |x|
            dict_array.push x.chomp
        end
        dict_array.shuffle!
        dict_array(0)
    end
end
