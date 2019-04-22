class WelcomeController < ApplicationController
  def index
    @topics = Topic.all
    @cards = Card.all
  end
end
