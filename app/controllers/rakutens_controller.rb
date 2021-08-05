class RakutensController < ApplicationController
  def rakuten_search
    if params[:keyword]
      @items = RakutenWebService::Books::Book.search(title: params[:keyword])
      # binding.pry


    end
  end
end
