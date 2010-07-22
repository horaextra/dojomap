require 'spec_helper'

describe ToiletsController do
  
  describe "index" do
    
    before(:each) do
      get :index
    end

    it "should assign @toilets" do
      assigns(:toilets).should ==  [{"latitude"=>-30.05914, "longitude"=>-51.175904}, {"latitude"=>30.059047, "longitude"=>-51.173013}, {"latitude"=>-30.06031, "longitude"=>-51.173646}, {"latitude"=>-30.06031, "longitude"=>-51.173646}, {"latitude"=>-30.055973, "longitude"=>-51.174898}]
    end
    
  end
  
end
