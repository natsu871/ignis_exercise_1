class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name, :null => false
      t.text :body, :null => false
      t.string :user_id
      t.timestamps
    end
  end
end
