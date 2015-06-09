require 'json'

class Till

  attr_reader :order

  def initialize
    @order = []
  end

  def menu_list
    file = File.read(File.expand_path("../../hipstercoffee.json", __FILE__))
    menu = JSON.parse(file)
  end

  def add_item item
    order << item
  end

end
