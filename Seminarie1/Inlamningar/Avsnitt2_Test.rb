require './Avsnitt2'
require 'test/unit'

class TestAvsnitt2 < Test::Unit::TestCase
  def test_simple
    # Uppgift 5
    assert_equal("Johan", PersonName.new("Johan", "Wanglof").name)
    assert_equal("Wanglof", PersonName.new("Johan", "Wanglof").surname)
    assert_equal("Johan Wanglof", PersonName.new("Johan", "Wanglof").fullname)

    # Uppgift 6
    assert_equal("Johan", Person.new("Johan", "Wanglof", 25).name)
    assert_equal("Wanglof", Person.new("Johan", "Wanglof", 25).surname)
    assert_equal("Johan Wanglof", Person.new("Johan", "Wanglof", 25).fullname)
    assert_equal(25, Person.new("Johan", "Wanglof", 25).age)
    assert_equal(1987, Person.new("Johan", "Wanglof", 25).birthyear)
    assert_equal(1983, Person.new("Johan", "Wanglof", 25).birthyear=1983)
    assert_equal(19, Person.new("Johan", "Wanglof", 25).age=19)
  end
end
