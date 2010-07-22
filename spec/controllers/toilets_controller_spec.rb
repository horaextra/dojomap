require 'spec_helper'

describe ToiletsController do
  
  describe "index" do
    
    before(:each) do
      get :index
    end

    it "should assign @toilets" do
      assigns(:toilets).should ==  [{"latitude"=>-30.058381, "longitude"=>-51.175247}, {"latitude"=>-30.057963, "longitude"=>-51.174971}, {"latitude"=>-30.058497, "longitude"=>-51.17595}]
    end
    
  end
  
  describe "show" do
    
    it "should return toilet from lat_long" do
      get :show, :id => "-30.058381,-51.175247"
      assigns(:toilet).should == {"working_hour"=>"todos os dias, das 8h às 21h.", "purpose"=>"nº 1 e nº 2", "public"=>"both", "title"=>"Prédio 8 - Faculdade de Letras", "tip"=>"Próximo à lanchonete do térreo.", "lat_long"=>"-30.058381,-51.175247", "capacity"=>"2 mictórios e 4 sanitários.", "address"=>"Avenida Ipiranga, 6681 - Prédio 8 - Porto Alegre - RS, 91530-000, Brasil - (0xx)51 3320-3500"}
    end

  end
    
end
