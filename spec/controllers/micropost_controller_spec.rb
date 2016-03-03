require 'rails_helper'

RSpec.describe MicropostController, :type => :controller do

  describe "GET content:string" do
    it "returns http success" do
      get :content:string
      expect(response).to be_success
    end
  end

  describe "GET user_id:integer" do
    it "returns http success" do
      get :user_id:integer
      expect(response).to be_success
    end
  end

end
