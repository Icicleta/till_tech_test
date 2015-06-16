require 'spec_helper'

feature 'user can press orders' do

  let(:till) { Till.new }

  scenario 'list of dishes and prices is a hash' do
    expect(till.menu_list).to be_an Array
  end

  scenario 'add item to order' do
    # till.stub(:add_item) { 'capuccino' }
    till.add_item 'cappuccino'
    expect(till.order).to include 'cappuccino'
  end

  scenario 'can add more than one item' do
    till.add_item 'cappuccino'
    till.add_item 'banana bread'
    expect(till.order).to eq ['cappuccino', 'banana bread']
  end

  scenario 'can add 2 o more of the same item' do
    till.add_item 'cappuccino'
    till.add_item 'cappuccino'
    expect(till.order).to eq %w(cappuccino cappuccino)
  end
end
