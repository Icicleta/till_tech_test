require_relative 'bill'

class Calculator

  def total_price items
    items.values.inject(0) { |total, value| total + value }
    # items.each_value { |value| value += value }
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
# p calculator.total_price

