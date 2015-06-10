require 'spec_helper'
require 'bill'

feature 'display in bill' do

  context 'fixed content' do

    let(:bill) { Bill.new }

    scenario 'name of place' do
      expect(bill.coffee_info).to include 'shopName' => 'The Coffee Connection'
    end

    scenario 'address' do
      expect(bill.coffee_info).to include 'address' => '123 Lakeside Way'
    end

    scenario 'telephone' do
      expect(bill.coffee_info).to include 'phone' => '16503600708'
    end

  end

  context 'content order info' do

    it 'name' do
      expect(bill.order).to
    end

  end
end
