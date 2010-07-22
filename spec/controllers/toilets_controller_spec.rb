require 'spec_helper'
require 'json'

describe ToiletsController do
  
  describe "index" do
    
    before(:each) do
      get :index
    end

    it "should assign @toilets" do
      assigns(:toilets).should == [{"lat"=>-30.059166, "long"=>-51.175896}, {"lat"=>-30.059166, "long"=>-51.175896}]
    end
    
  end
  
end
