class DojosController < ApplicationController
  
  def index
    @dojos = Dojo.all
    respond_to do |format|
      format.json { render :json => @dojos }
    end
  end
  
  def show
    @dojo = Dojo.find(params["id"])
  end
  
end