require './Avsnitt3'
require 'test/unit'

class TestAvsnitt3 < Test::Unit::TestCase
  def test_simple
    # Uppgift 8
    assert_equal("LOL", "Laugh out loud".acronym)
    assert_equal("DWIM", "Do what I mean!!".acronym)

    # Uppgift 9
    assert_equal([2, 3, 1], [1, 2, 3].rotate_left)
    assert_equal([1, 2, 3], [1, 2, 3].rotate_left(3))
  end
end
p
