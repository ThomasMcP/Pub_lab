
class Pub

  attr_reader :name, :drinks, :till

  def initialize(name, till, drinks)
    @name = name
    @drinks = drinks
    @till = till
  end


  def bar_serves(customer, drink)
    #customer calls buy_drink method with drink containing price
    customer.remove_cash(drink.price)
    #removes price of drink from till
    @till += drink.price
  end

  def check_drink_count
    return @drinks.length
  end

  def remove_drink(drink)
    for beverage in @drinks
      if beverage == drink
        @drinks.delete(beverage)
      end
    end
  end



end
