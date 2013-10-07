require 'spec_helper'

describe UserSessionsController do

  describe "GET new" do
    it "should have a new UserSession" do
      get :new
      assigns(:user_session).should be_present
    end
  end

  describe "POST create" do
    it "should authenticate valid user" do
      post "create", :user_session => {:email => "test@test.com", :password => '123456'}
      assigns(:user_session).email.should == "test@test.com"
    end
  end
end
