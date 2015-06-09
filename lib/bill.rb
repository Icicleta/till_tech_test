require 'json'

class Bill

  def coffee_info
    file = File.read(File.expand_path("../../hipstercoffee.json", __FILE__))
    JSON.parse(file).first
  end

end
