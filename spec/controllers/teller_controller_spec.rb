require 'spec_helper'

describe TellerController do

  describe "GET 'withdraw'" do
    it "returns http success" do
      get 'withdraw'
      response.should be_success
    end
  end

end
