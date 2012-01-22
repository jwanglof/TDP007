# -*- coding: utf-8 -*-
require './Avsnitt4'
require 'test/unit'

class TestAvsnitt4 < Test::Unit::TestCase
  def test_simple
    # Uppgift 10
    assert_equal("USERNAME: johwa457", get_username("My login is: USERNAME: johwa457 and that's it"))

    # Uppgift 11
    assert_equal(["html","head","meta","title","style","body","div","img"], tagnames("http://elektronvolt.se"))

    # Uppgift 12
    assert_equal("FMA297", regnr("Min bil heter FMA297"))
    assert_equal(false, regnr("XQT784"))
    assert_equal("Nya123", regnr("Nya123"))
    assert_equal("STE123", regnr("NYASTE123")) # Inte riktigt säker om denna ska funka
    assert_equal(false, regnr("N+H123"))
  end
end
