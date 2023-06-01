class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :memo
      t.date :start
      t.date :finish
      t.integer :alltime

      t.timestamps
    end
  end
end
