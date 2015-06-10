require 'spec_helper'
require 'bill'

describe Bill do

  context 'content fixed info' do

    it 'name of place' do
      expect(subject.coffee_info).to
      include 'shopName' => 'The Coffee Connection'
    end

    it 'address' do
      expect(subject.coffee_info).to include 'address' => '123 Lakeside Way'
    end

    it 'phone' do
      expect(subject.coffee_info).to include 'phone' => '16503600708'
    end

  end

  # context 'content order info' do

  #   it 'name' do

  #   end

  # end
end
