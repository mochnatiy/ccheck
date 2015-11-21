require 'test/unit'
require File.expand_path('../app/card.rb', File.dirname(__FILE__))
require File.expand_path('../fixtures.rb', __FILE__)

class CardTest < Test::Unit::TestCase
  def test_info
    visa = Fixtures::Valid.get[:visa].first
    card = Card.new(visa)
    assert_equal(card.info, 'Visa, valid')

    invalid_visa = Fixture::Invalid.get[:visa][:luhn].first
    card = Card.new(invalid_visa)
    assert_equal(card.info, 'Visa, invalid')
  end
end
