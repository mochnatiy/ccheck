require 'test/unit'
require File.expand_path('../app/provider.rb', File.dirname(__FILE__))
require File.expand_path('../fixtures.rb', __FILE__)

class ProviderTest < Test::Unit::TestCase
  def test_identity
    Fixtures::Unknown.get.each do |fixture|
      assert_equal(Provider.identity(fixture), 'Unknown')
    end

    Fixtures::Known.get.each do |fixture|
      assert_equal(Provider.identity(fixture[:number]), fixture[:result])
    end
  end
end
