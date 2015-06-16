require 'spec_helper'
require 'bill'

describe Bill do

  let(:order) { ['Cappuccino', 'Choc Mudcake'] }
  let(:bill) { described_class.new order }

  context 'fixed content' do

    it 'name of place' do
      expect(bill.shop_name).to eq 'The Coffee Connection'
    end

    it 'address' do
      expect(bill.address).to eq '123 Lakeside Way'
    end

    it 'phone' do
      expect(bill.phone).to eq '16503600708'
    end

  end

  context 'content order info' do

    it 'name and price' do
      bill.items_details
      expect(bill.items).to include 'Cappuccino' => 3.85
    end

  end

end
