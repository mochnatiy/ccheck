require 'test/unit'
require File.expand_path('../app/card.rb', File.dirname(__FILE__))
require File.expand_path('../fixtures.rb', __FILE__)

class CardTest < Test::Unit::TestCase
  def test_info
    Fixtures::CardExample.get.each do |fixture|
      card = Card.new(fixture[:number])
      assert_equal(card.info, fixture[:info])
    end
  end
end
