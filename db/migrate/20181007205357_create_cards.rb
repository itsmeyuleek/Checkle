class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :question
      t.string :answer
      t.integer :topic_id
      t.string :image
      t.integer :memorization_level

      t.timestamps
    end
  end
end
