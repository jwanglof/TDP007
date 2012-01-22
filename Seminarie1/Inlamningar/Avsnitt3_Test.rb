require './Avsnitt3'
require 'test/unit'

class TestAvsnitt3 < Test::Unit::TestCase
  def test_simple
    # Uppgift 7
    assert_equal(2, (3.fib))
    assert_equal(0, (0.fib))
    assert_equal(1, (2.fib))
    assert_equal(1, (1.fib))
    assert_equal("undefined", (-10.fib))

    # Uppgift 8
    assert_equal("LOL", "Laugh out loud".acronym)
    assert_equal("DWIM", "Do what I mean!!".acronym)

    # Uppgift 9
    assert_equal([2, 3, 1], [1, 2, 3].rotate_left)
    assert_equal([1, 2, 3], [1, 2, 3].rotate_left(3))
    assert_equal([3, 1, 2], ([1,2,3].rotate_left(2)))
    assert_equal([], ([].rotate_left))
  end
end
p
