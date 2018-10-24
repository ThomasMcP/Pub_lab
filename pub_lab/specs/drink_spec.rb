require('minitest/autorun')
require('minitest/rg')
require_relative('../drink.rb')

class TestDrink < MiniTest::Test

 def setup
 @drink = Drink.new("Guinness", 4)
 end

def test_drink_has_class_default
 expected = Drink
 actual = @drink.class
 assert_equal(expected, actual)
end

def test_drink_name
  expected = 'Guinness'
  actual = @drink.name
  assert_equal(expected, actual)
end

def test_drink_has_a_price
  expected = 4
  actual = @drink.price
  assert_equal(expected, actual)
end





end
