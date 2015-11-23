require File.expand_path('../provider.rb', __FILE__)
require File.expand_path('../validator.rb', __FILE__)

class Card
  def initialize(number)
    @number = number.chomp
  end

  def info
    unless /^(?<num>\d+)$/ =~ @number
      return 'Entered value is not a credit card number'
    end

    "#{Provider.identity(@number)}, #{Validator.validate(@number)}"
  end
end
