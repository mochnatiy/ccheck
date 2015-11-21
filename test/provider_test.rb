require 'test/unit'
require File.expand_path('../app/provider.rb', File.dirname(__FILE__))
require File.expand_path('../fixtures.rb', __FILE__)

class ProviderTest < Test::Unit::TestCase
  def test_identity
    visas = Fixtures::Valid.get[:visa]
    visas.each do |number|
      provider = Provider.new(number)
      assert_equal(provider.identity, 'Visa')
    end
  end
end
