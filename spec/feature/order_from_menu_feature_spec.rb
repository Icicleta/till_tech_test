require 'spec_helper'

feature 'user can press orders' do
  let(:order) { Order.new }
  scenario 'list of dishes and prices is a hash' do
    expect(order.menu_list).to be_an Array
  end
end
