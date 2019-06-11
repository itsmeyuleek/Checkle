class AddDescriptionToTopics < ActiveRecord::Migration[5.0]
  def change
    add_column :topics, :description, :string
  end
end
