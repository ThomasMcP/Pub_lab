class Customer

  attr_reader :name, :wallet , :age

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
  end

  def remove_cash(price)
    return @wallet -= price
  end


   

end
