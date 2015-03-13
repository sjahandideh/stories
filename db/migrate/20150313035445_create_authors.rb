class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.string :nick_name
      t.text   :info

      t.timestamps null: false
    end
  end
end
