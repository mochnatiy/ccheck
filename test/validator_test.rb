require 'test/unit'
require File.expand_path('../app/validator.rb', File.dirname(__FILE__))
require File.expand_path('../fixtures.rb', __FILE__)

class ValidatorTest < Test::Unit::TestCase
  def test_validate
    Fixtures::Valid.get.each do |fixture|
      assert_equal(Validator.validate(fixture), 'valid number')
    end

    Fixtures::Invalid.get.each do |fixture|
      assert_equal(Validator.validate(fixture), 'invalid number')
    end
  end
end
