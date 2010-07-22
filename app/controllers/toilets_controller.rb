class ToiletsController < ApplicationController
  
  def index
    @toilets = Toilet.all
    respond_to do |format|
      format.json { render :json => @toilets }
    end
  end
  
end
