class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.string :title
      t.datetime :start_date
      t.datetime :end_date
      t.text :description

      t.timestamps null: false
    end
  end
end
