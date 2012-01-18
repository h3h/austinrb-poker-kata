require 'minitest'
require './poker'

class TestMeme < MiniTest::Unit::TestCase
  def setup
  end

  def test_
    assert_equal "OHAI!", @meme.i_can_has_cheezburger?
  end
end
