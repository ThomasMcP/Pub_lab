require('minitest/autorun')
require('minitest/rg')
require_relative('../customer.rb')
require_relative('../pub.rb')

class TestCustomer < MiniTest::Test

  def setup
    @customer = Customer.new("Johnny Walker", 100)
  end

  def test_customer_has_class_default
   expected = Customer
   actual = @customer.class
   assert_equal(expected, actual)
  end

  def test_customer_has_name
      assert_equal("Johnny Walker", @customer.name)
  end

end
