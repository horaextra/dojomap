require 'spec_helper'

describe Toilet do
  
  describe ".all" do

    it "should return all toilets" do
      Toilet.all.should == [{"lat"=>-30.059166, "long"=>-51.175896}, {"lat"=>-30.059166, "long"=>-51.175896}]
    end

  end
  
end