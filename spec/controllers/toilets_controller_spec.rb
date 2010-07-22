require 'spec_helper'

describe ToiletsController do
  
  describe "index" do
    
    before(:each) do
      get :index
    end

    it "should assign @toilets" do
      assigns(:toilets).should ==  [{"latitude"=>-30.05914, "longitude"=>-51.175904}, {"latitude"=>30.059047, "longitude"=>-51.173013}, {"latitude"=>-30.06031, "longitude"=>-51.173646}, {"latitude"=>-30.055973, "longitude"=>-51.174898}]
    end
    
  end
  
  describe "show" do
    
    it "should return toilet from lat_long" do
      get :show, :id => "-30.059140,-51.175904"
      assigns(:toilet).should == {"lat_long"=>"-30.059140,-51.175904", "description" => "Descrição do banheiro"}
    end

  end
    
end
