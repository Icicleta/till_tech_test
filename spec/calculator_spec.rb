require 'spec_helper'
require 'calculator'

describe Calculator do

  let(:calculator) { described_class.new items }
  let(:items) { { "Cappuccino" => 3.85, "Choc Mudcake" => 6.4, "Tea" => 3.65 } }

  it 'gets the subtotal from order' do
    expect(calculator.subtotal_price).to eq 13.9
  end

  it 'applies TAX of 8.64%' do
    expect(calculator.tax).to eq 1.20
  end

  it 'gets the total to pay' do
    expect(calculator.total_price).to eq 15.10
  end

end
