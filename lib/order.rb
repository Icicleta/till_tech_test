require 'json'

class Order

  def menu_list
    file = File.read(File.expand_path("../../hipstercoffee.json", __FILE__))
    menu = JSON.parse(file)
  end

end
