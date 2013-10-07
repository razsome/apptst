require 'spec_helper'

describe UsersController do
  it "should assign @user" do
    get :new
    assigns(:user).should be_present
  end
end
