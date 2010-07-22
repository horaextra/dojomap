require 'spec_helper'

describe Toilet do
  
  describe ".all" do

    it "should return all toilets" do
      Toilet.all.should ==  [{"working_hour"=>"todos os dias, das 8h às 21h.", "purpose"=>"nº 1 e nº 2", "public"=>"both", "title"=>"Prédio 8 - Faculdade de Letras", "tip"=>"Próximo à lanchonete do térreo.", "lat_long"=>"-30.058381,-51.175247", "capacity"=>"2 mictórios e 4 sanitários.", "address"=>"Avenida Ipiranga, 6681 - Prédio 8 - Porto Alegre - RS, 91530-000, Brasil - (0xx)51 3320-3500"}, {"working_hour"=>"todos os dias, das 8h às 21h.", "purpose"=>"nº 1 e nº 2", "public"=>"both", "title"=>"Prédio 7 - Famecos", "tip"=>"Vire a esquerda na lanchonete do térreo, suba as escadas, vire a esquerda. Fica em frente ao 212.", "lat_long"=>"-30.057963,-51.174971", "capacity"=>"4 sanitários.", "address"=>"Avenida Ipiranga, 6681 - Prédio 7 - Porto Alegre - RS, 91530-000, Brasil - (0xx)51 3320-3500"}, {"working_hour"=>"todos os dias, das 8h às 21h. (horário da PUC)", "purpose"=>"nº 1 e nº 2", "public"=>"both", "title"=>"Prédio 40 - 3º andar", "tip"=>"Suba o elevador até o 3º andar, vire a direita e siga pelo corredor.", "lat_long"=>"-30.058497,-51.17595", "capacity"=>"4 mictórios e 5 sanitários.", "address"=>"Avenida Ipiranga, 6681 - Prédio 40 - Porto Alegre - RS, 91530-000, Brasil - (0xx)51 3320-3500"}]
    end

  end
  
  describe ".all_to_json" do

    it "should return all toilets" do
      Toilet.all_to_json.should == [{"latitude"=>-30.058381, "longitude"=>-51.175247}, {"latitude"=>-30.057963, "longitude"=>-51.174971}, {"latitude"=>-30.058497, "longitude"=>-51.17595}]
    end

  end
  
end