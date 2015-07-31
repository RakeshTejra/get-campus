class CreateUserDetails < ActiveRecord::Migration
  def change
    create_table :user_details do |t|
      t.integer :user_id
      t.integer :detail_id

      t.timestamps null: false
    end
  end
end
