require 'spec_helper'
require 'bill'

describe Bill do

  it 'has a name of place' do
    expect(subject.coffee_info).to include 'shopName' => 'The Coffee Connection'
  end

  it 'address' do
    expect(subject.coffee_info).to include 'address' => '123 Lakeside Way'
  end

  it 'phone' do
    expect(subject.coffee_info).to include 'phone' => '16503600708'
  end

end
