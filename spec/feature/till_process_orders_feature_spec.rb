require 'spec_helper'

feature 'user can press orders' do

  let(:till) { Till.new }

  scenario 'list of dishes and prices is a hash' do
    expect(till.menu_list).to be_an Array
  end

  scenario 'add item to order' do
    # till.stub(:add_item) { 'capuccino' }
    till.add_item 'capuccino'
    expect(till.order).to include 'capuccino'
  end

  scenario 'can add more than one item' do
    till.add_item 'capuccino'
    till.add_item 'banana bread'
    expect(till.order).to eq ['capuccino', 'banana bread']
  end

  scenario 'can add 2 o more of the same item' do
    till.add_item 'capuccino'
    till.add_item 'capuccino'
    expect(till.order).to eq %w(capuccino capuccino)
  end
end