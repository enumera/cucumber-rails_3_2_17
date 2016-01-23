require 'spec_helper'



  describe "GET 'index'" do
    it "returns http success" do
      get 'home/index'
      response.should be_success
    end
  end


