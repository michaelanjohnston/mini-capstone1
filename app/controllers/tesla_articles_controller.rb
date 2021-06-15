class TeslaArticlesController < ApplicationController

  def index
    response = HTTP.get("https://newsapi.org/v2/everything?q=tesla&from=2021-04-23&sortBy=publishedAt&apiKey=eb9fe9969f514ccd9ee5e1454d7d0336")
    data = JSON.parse(response.body)
    render json: data["articles"]
  end
end
