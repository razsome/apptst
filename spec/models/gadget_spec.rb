require 'spec_helper'

describe Gadget do
  it "should be valid" do
    Gadget.new(:name=>"abc")
  end
end
