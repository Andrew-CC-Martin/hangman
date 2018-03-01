require_relative 'enter_char'
require_relative 'create_word'
require_relative 'graphic'
graphic = Graphic.get
word = Create.word
word_array = word.each_char.to_a
placeholder = "_"*word_array.length
lives = 5
while true do 
    system "clear"
    puts "Welcome! Please enter a character."
    puts placeholder
    puts graphic[lives]
    puts "lives remainding: #{lives}"
        if lives<1 then
            puts "You Lose!"
            exit(0)
        end
        lives, placeholder = Enter.char word_array, placeholder, lives
        unless placeholder.include? "_" then
            puts "Congratulations, you win!"
            exit(0)
        end
end


