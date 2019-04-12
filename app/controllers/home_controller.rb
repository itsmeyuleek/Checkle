class HomeController < ApplicationController
  load_and_authorize_resource
  # before_action :authenticate_user!

  def index
    @topics = current_user.topics
    @cards = current_user.cards
    @card = Card.first
  end

end
