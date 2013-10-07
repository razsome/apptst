require 'spec_helper'

describe User do

  it "it should create valid user" do
    User.new(:name=>'test', :password=>'123456', :password_confirmation=>'123456', :email=>'test@test.com').should be_valid
  end
end
