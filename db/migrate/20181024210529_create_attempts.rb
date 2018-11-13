class CreateAttempts < ActiveRecord::Migration[5.0]
  def change
    create_table :attempts do |t|
      t.integer :user_id
      t.integer :check_id
      t.integer :card_id
      t.boolean :result

      t.timestamps
    end
  end
end
