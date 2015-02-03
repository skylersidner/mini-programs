require 'minitest/autorun'
require_relative 'WordConnector'

#Currently broken.  Still having severe problems with understanding how to test.

class WordConnectorTest < Minitest::Test
  
  def setup
    @colors = WordConnector.new(["Blue", "Red", "Green"])
    @colors_short = WordConnector.new(["Blue", "Green"])
  end
  
  def test_if_connect_method_works
    assert_equal("Blue, Red, and Green.", @colors.connect)
  end
  
  def test_if_connect_method_works_on_short_arrays
    assert_equal("Blue, Green.", @colors_short.connect)
  end
  
end