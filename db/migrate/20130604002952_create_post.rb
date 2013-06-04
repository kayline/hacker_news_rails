class CreatePost < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :original_url
      t.references :user
      t.timestamps
    end
  end
end
