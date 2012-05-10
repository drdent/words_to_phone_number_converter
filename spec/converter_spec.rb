# -*- encoding : utf-8 -*-
require 'spec_helper'
require 'convert'

describe Converter do

  context ".convert_word" do
    it "returns 278 for the word ast" do
      Converter.convert_word("ast").should == "278"
    end
  end

  context ".convert_words" do
    it "returns '2255 2528' for 'call blau'" do
      Converter.convert_word("call blau").should == "2255 2528"
    end
  end

end
