class WelcomeController < ApplicationController

  def index
    @topics = Topic.all
    @cards = Card.all
  end

  def discover
    @topics = Topic.where(user_id: nil)
    @cards = Card.where(user_id: nil)

    # if current_user
    #   @topics = current_user.topics
    # else
    #   @topics = Topic.where(user_id: nil)
    # end
    #
    # if current_user
    #   @cards = current_user.cards
    # else
    #   @cards = Card.where(user_id: nil)
    # end

  end

end
