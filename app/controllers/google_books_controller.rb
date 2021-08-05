class GoogleBooksController < ApplicationController
  def new
    # if params[:keyword].present?
    #   require "net/http"
    #   # google books検索するためのURL
    #   url = "https://www.googleapis.com/books/v1/volumes?q="
    #   # URL + 検索ワード
    #   request = url + params[:keyword]
    #   # 日本語をURIで使用できる文字列に変換する
    #   enc_str = URI.encode(request)
    #   #
    #   uri = URI.parse(enc_str)
    #   json = Net::HTTP.get(uri)
    #   @bookjson = JSON.parse(json)
    #   count = 5
    #   @books = Array.new(count).map{Array.new(4)}
    #   count.times do |x|
    #     @books[x][0] = @bookjson.dig("items", x, "volumeInfo", "title")
    #     @books[x][1] = @bookjson.dig("items", x, "volumeInfo", "imageLinks","thumbnail")
    #     @books[x][2] = @bookjson.dig("items", x, "volumeInfo", "authors")
    #     @books[x][2] = @books[x][2].join(',') if @books[x][2] #複数著者をカンマで区切る
    #     @books[x][3] = @bookjson.dig("items", x, "volumeInfo", "industryIdentifiers", 0, "identifier")
    #   end
    # end
    keyword = URI.encode(params[:keyword])
    @books = JSON.parse(Net::HTTP.get(URI.parse("https://www.googleapis.com/books/v1/volumes?q=" + keyword)))
    # @books =
    # binding.pry

  end
end
