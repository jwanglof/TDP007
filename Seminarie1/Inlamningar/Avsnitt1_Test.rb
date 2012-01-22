require './Avsnitt1'
require 'test/unit'

class TestAvsnitt1 < Test::Unit::TestCase
  def test_simple
    # Uppgift 1
    assert_not_nil(n_times(3) { puts "Hello!" })

    # Uppgift 2
    assert_equal(3628800, faculty(10))
    assert_equal(nil, faculty(0))

    # Uppgift 3
    assert(longest_string(['apelsin', 'banan', 'citron']), 'apelsin')
    assert_equal(longest_string(['bapelsin', 'facebook', 'google']), 'bapelsin')
    assert_equal("apelsin", (longest_string ["apelsin", "banan", "citron", "bilarna"]))

    # Uppgift 4
    assert_equal("apelsin", (find_it(["apelsin", "banan", "citron"]) { |a,b| a.length > b.length }))
    assert_equal("banan", (find_it(["apelsin", "banan", "citron"]) { |a,b| a.length < b.length }))
  end
end
