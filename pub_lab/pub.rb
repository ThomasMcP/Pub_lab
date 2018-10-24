
class Pub

  attr_reader :name, :drinks

  def initialize(name, till, drinks)
    @name = name
    @drinks = drinks
    @till = till
  end


  def bar_serves(customer, drink)
    #customer calls buy_drink method with drink containing price
    customer.remove_cash(drink)
    #removes price of drink from till
    @till += drink.price
  end




end
