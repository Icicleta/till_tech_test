require 'spec_helper'
require 'calculator'

describe Calculator do

  let(:calculator) { described_class.new }
  let(:items) { { "Cappuccino" => 3.85, "Choc Mudcake" => 6.4, "Tea" => 3.65 } }

  it 'gets the total to pay' do
    expect(calculator.total_price items).to eq 13.9
  end

end
