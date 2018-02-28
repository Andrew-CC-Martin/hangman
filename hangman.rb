dictionary_array = []
dictionary = File.open('dictionary.txt')
dictionary_array = dictionary.readlines

dict_array = []
File.open('dictionary.txt').each do |x|
    dict_array.push x.chomp
end
dict_array.shuffle!
puts dict_array



