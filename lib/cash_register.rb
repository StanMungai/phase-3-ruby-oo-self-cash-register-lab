class CashRegister
  attr_accessor :total, :discount, :last_item

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    quantity.times { @items << title}
    @last_item = price * quantity
    self.total += @last_item
    self.total 
  end

  def apply_discount
    if self.discount > 0
      self.total -= ((self.discount/100.to_f) * self.total)
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= @last_item
  end

end

