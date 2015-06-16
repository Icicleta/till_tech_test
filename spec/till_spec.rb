require 'spec_helper'
require 'till'

describe Till do

  it 'menu exist' do
    expect(subject.menu_list).to be_an Array
  end

  it 'can add a item' do
    subject.add_item 'capuccino'
    expect(subject.order).to include 'capuccino'
  end

  it 'can add more than one item' do
    subject.add_item 'cappuccino'
    subject.add_item 'banana bread'
    expect(subject.order).to eq ['cappuccino', 'banana bread']
  end

  scenario 'can add 2 o more of the same item' do
    subject.add_item 'cappuccino'
    subject.add_item 'cappuccino'
    expect(subject.order).to eq %w(cappuccino cappuccino)
  end
end
