class ToiletsController < ApplicationController
  
  def index
    @toilets = Toilet.all_to_json
    respond_to do |format|
      format.json { render :json => @toilets }
    end
  end
  
  def show
    toilet = Toilet.all.detect{|toilet| toilet["lat_long"] == params["lat_long"]}
    @toilet = Toilet.parse(toilet)
  end
  
end
