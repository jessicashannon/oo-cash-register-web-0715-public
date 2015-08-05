class CashRegister

  attr_reader :total

  def initialize(employee_discount=nil)
    @total = 0
    @discount = employee_discount
    @items = []
  end

  def discount
    @discount
  end

  def total
    @total
  end

  def total=(total)
    @total = total
  end

  def add_item(title, price, quantity=1)
    @total = total + (price * quantity)
    quantity.times do
      @items << title
    end
  end

  def apply_discount
    if @discount == nil
      "There is no discount to apply."
    else
      @total = @total - (@total * @discount/100)
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

end