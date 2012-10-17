$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require 'test/unit'
require 'php_embed_interface'

class TestPHPEI < Test::Unit::TestCase
  def test_array_diff
    self.assert_equal({0=>1,1=>2,4=>5}, PHPEI.array_diff([1,2,3,4,5], [3,4]))
  end
end
