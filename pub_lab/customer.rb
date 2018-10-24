class Customer

  attr_reader :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def remove_cash(price)
    return @wallet -= price
  end


end
