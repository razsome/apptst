require 'spec_helper'

describe GadgetsController do
  describe "GET index" do
    it "should require login" do
      get :index
      response.should be_redirect
      response.should redirect_to(new_user_session_path)
    end
    it "should list gadgets" do
      activate_authlogic
      user = User.create!(:name => 'test', :password => '123456', :password_confirmation => '123456', :email => 'test@test.com')
      gadget = user.gadgets.create(:name => 'toy')
      UserSession.create user
      get :index
      assigns(:gadgets).should == [gadget]
    end
  end

end
