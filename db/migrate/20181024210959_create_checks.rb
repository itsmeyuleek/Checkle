class CreateChecks < ActiveRecord::Migration[5.0]
  def change
    create_table :checks do |t|
      t.integer :user_id
      t.integer :success
      t.integer :failure

      t.timestamps
    end
  end
end
