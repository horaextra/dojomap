require 'spec_helper'

describe Toilet do
  
  describe ".all" do

    it "should return all toilets" do
      Toilet.all.should ==  [{"lat_long"=>"-30.059140,-51.175904", "description"=>"Descrição do banheiro"}, {"lat_long"=>"30.059047,-51.173013", "description"=>"Descrição do banheiro2"}, {"lat_long"=>"-30.06031,-51.173646", "description"=>"Descrição do banheiro3"}, {"lat_long"=>"-30.055973,-51.174898"}]
    end

  end
  
  describe ".all_to_json" do

    it "should return all toilets" do
      Toilet.all_to_json.should == [{"latitude"=>-30.05914, "longitude"=>-51.175904}, {"latitude"=>30.059047, "longitude"=>-51.173013}, {"latitude"=>-30.06031, "longitude"=>-51.173646}, {"latitude"=>-30.055973, "longitude"=>-51.174898}]
    end

  end
  
end