require 'spec_helper'

describe DojosController do
  
  before(:each) do
    DojoImporter.new
  end
  
  describe "index" do
    
    before(:each) do
      get :index
    end

    it "should assign @dojos" do
      assigns(:dojos).should == Dojo.all
    end
    
  end
  
  describe "show" do
    
    it "should return dojo from lat_long" do
      get :show, :lat_long => "-30.058381,-51.175247"
      assigns(:dojo).should == Dojo.first
    end

  end
    
end
