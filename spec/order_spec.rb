require 'spec_helper'
require 'order'

describe Order do
  it 'menu exist' do
    expect(subject.menu_list).to be_an Array
  end
end
