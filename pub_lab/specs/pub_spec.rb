require('minitest/autorun')
require('minitest/rg')
require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../customer.rb')

class TestPub < MiniTest:: Test

 def setup()
    @drink1 = Drink.new("Joker IPA", 6)
    @drink2 = Drink.new("Twister", 9)
    @drink3 = Drink.new("Blue Moon", 4)
    @drink_list = [@drink1, @drink2, @drink3]
    @customer1 = Customer.new("Michael", 50)
    @pub = Pub.new("The Blue Blazer", 100, @drink_list)
 end

 def test_pub_has_name
   expected = "The Blue Blazer"
   actual = @pub.name
   assert_equal(expected, actual)
 end

def test_pub_has_drinks
   expected = @drink_list
   assert_equal(expected, @pub.drinks)
end

def test_pub_can_serve_customer
     expected = 109
     # @customer1.remove_cash(9)
     actual = @pub.bar_serves(@customer1, @drink2)
     # assert_equal(9, @customer.remove_cash(@drink2))
     assert_equal(expected, actual)
end


end
