class DojosController < ApplicationController
  
  def index
    @dojos = Dojo.all_to_json
    respond_to do |format|
      format.json { render :json => @dojos }
    end
  end
  
  def show
    dojo = Dojo.all.detect{ |dojo| dojo["lat_long"] == params["lat_long"]}
    @dojo = Dojo.parse(dojo)
  end
  
end
