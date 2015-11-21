require File.expand_path('../provider.rb', __FILE__)
require File.expand_path('../validator.rb',__FILE__)

class Card
  def initialize(number)
    @number = number
    @type = Provider.identity(number)
    @valid = Validator.validate(number)
  end

  def info
    "#{@type}, #{@valid}"
  end
end
