require './Avsnitt1'
require 'test/unit'

class TestAvsnitt1 < Test::Unit::TestCase
  def test_simple
    # Uppgift 1
    assert_not_nil(n_times(3) { puts "Hello!" })

    # Uppgift 3
    assert(longest_string(['apelsin', 'banan', 'citron']), 'apelsin')
    assert_equal(longest_string(['bapelsin', 'facebook', 'google']), 'bapelsin')
    assert_equal(longest_string('ingen_array'), false)
  end
end
