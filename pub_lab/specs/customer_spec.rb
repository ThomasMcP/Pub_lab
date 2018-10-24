require('minitest/autorun')
require('minitest/rg')
require_relative('../customer.rb')
require_relative('../pub.rb')

class TestCustomer < MiniTest::Test

  def setup
    @customer = Customer.new("Johnny Walker", 80, 18)
  end

  def test_customer_has_class_default
    expected = Customer
    actual = @customer.class
    assert_equal(expected, actual)
  end

  def test_customer_has_name
    assert_equal("Johnny Walker", @customer.name)
  end

  def test_customer_has_wallet
    assert_equal(80, @customer.wallet)
  end

  def test_remove_cash_from_wallet
    expected = 70
    actual = @customer.remove_cash(10)
    assert_equal(expected, actual)
  end





end
