require_relative 'bill'

class Calculator

  TAX_RATE = 0.0864

  def initialize items
    @items = items
  end

  def subtotal_price
    @items.values.inject(0) { |total, value| total + value }
  end

  def tax
    (subtotal_price * TAX_RATE).round(2)
  end

  def total_price
    subtotal_price + tax
  end

end

# till = Till.new
# till.add_item 'Cappuccino'
# till.add_item 'Choc Mudcake'
# till.add_item 'Tea'
# order = till.order
# bill = Bill.new order
# # p bill.shop_name
# # bill.items_details
# bill.items_details
# items = bill.items
# # p bill.order
# p items
# calculator = Calculator.new items
# p calculator.subtotal_price
# p calculator.tax

