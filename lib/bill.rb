require 'json'
require_relative 'till'

class Bill

  attr_reader :items

  def initialize order
    @order = order
    @items = {}
  end

  def coffee_info
    file = File.read(File.expand_path("../../hipstercoffee.json", __FILE__))
    JSON.parse(file).first
  end

  def shop_name
    coffee_info['shopName']
  end

  def address
    coffee_info['address']
  end

  def phone
    coffee_info['phone']
  end

  def items_details
    @order.each do |item|
      item_price = coffee_info['prices'][0][item]
      items.store(item, item_price.to_i)
    end
  end

end

# till = Till.new
# till.add_item 'Cappuccino'
# till.add_item 'Choc Mudcake'
# till.add_item 'Tea'
# p order = till.order
# bill = Bill.new order
# # p bill.shop_name
# bill.items_details
p bill.items