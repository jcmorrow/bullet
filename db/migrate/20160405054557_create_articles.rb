class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.integer :user_id, null: false
    end

    add_index :articles, :user_id
  end
end
