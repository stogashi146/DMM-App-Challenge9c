class RakutensController < ApplicationController
  def rakuten_search
    if params[:keyword]
      @items = RakutenWebService::Books::Book.search(title: params[:keyword], booksGenreId: "001001")
      # binding.pry

    end
  end
end
