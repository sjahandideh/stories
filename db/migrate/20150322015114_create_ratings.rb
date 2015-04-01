class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.string  :value
      t.integer :chapter_id
      t.integer :user_id # the user who gives the rating

      t.timestamps null: false
    end
  end
end
