class HomeController < ApplicationController

  def index
    @topics = Topic.all
    @cards = Card.all
    @card = Card.first
  end

end
