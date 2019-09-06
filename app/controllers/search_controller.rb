class SearchController < ApplicationController

  def index
    render locals: { facade: SearchFacade.new(params[:family_names])}
  end
end
