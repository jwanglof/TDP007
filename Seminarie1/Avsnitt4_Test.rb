require './Avsnitt4'
require 'test/unit'

class TestAvsnitt4 < Test::Unit::TestCase
  def test_simple
#    assert_equal("LOL", "Laugh out loud".acronym)
    # Uppgift 10
    assert_equal("USERNAME: johwa457", get_username("My login is: USERNAME: johwa457 and that's it"))

    # Uppgift 12
    assert_equal("FMA297", regnr("Min bil heter FMA297"))
    assert_equal(false, regnr("XQT784"))
  end
end
