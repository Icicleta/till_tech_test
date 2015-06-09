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
end
