require File.expand_path('../provider.rb', __FILE__)
require File.expand_path('../validator.rb', __FILE__)

class Card
  def initialize(number)
    @number = number.chomp
  end

  def info
    return 'Enter a credit card number' unless /^(?<num>\d+)$/ =~ @number
    "#{Provider.identity(@number)}, #{Validator.validate(@number)}"
  end
end
