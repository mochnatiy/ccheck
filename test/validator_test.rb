require 'test/unit'
require File.expand_path('../app/validator.rb', File.dirname(__FILE__))
require File.expand_path('../fixtures.rb', __FILE__)

class ValidatorTest < Test::Unit::TestCase
  def test_validate
    visas = Fixtures::Valid.get[:visa]
    visas.each do |number|
      assert_equal(Validator.validate(number), 'valid')
    end
  end
end
