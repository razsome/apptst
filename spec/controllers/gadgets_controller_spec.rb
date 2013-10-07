require 'spec_helper'

describe GadgetsController do
  describe "GET index" do
    it "should require login" do
      get :index
      response.should be_redirect
      response.should redirect_to(new_user_session_path)
    end

  end

end
