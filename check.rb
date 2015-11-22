require File.expand_path('../app/card.rb', __FILE__)

if __FILE__ == $0
  puts "Enter a credit card number:\n"
  number = $stdin.readline()

  card = Card.new(number)
  puts card.info
end
