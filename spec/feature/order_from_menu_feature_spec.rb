require 'spec_helper'

feature 'user can press orders' do

  scenario 'list of dishes and prices is a hash' do
    expect(menu_list).to be_a Hash
  end
end
