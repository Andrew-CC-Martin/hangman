require_relative 'enter_char'
require_relative 'create_word'
require_relative 'graphic'
require 'colorize'
graphic = Graphic.get
word = Create.word
word_array = word.each_char.to_a
placeholder = "_"*word_array.length
lives = 5
letters_entered = []
input = ''
while true do 
    system "clear"
    puts "Welcome! Please enter a character.\n".colorize(:light_green)
    puts placeholder
    puts graphic[lives]
    puts "\nlives remaining: #{lives}".colorize(:light_red)
    puts "Letters entered: "
    letters_entered.each do |x|
        print x.colorize(:light_blue)
    end
    puts "\n"
    if lives<1 then
        puts "The word was #{word}. You Lose!"
        exit(0)
    end
    unless placeholder.include? "_" then
        puts "Congratulations, you win!"
        exit(0)
    end
    lives, placeholder, input = Enter.char word_array, placeholder, lives
    letters_entered.push input
end


