class CreateVoteTable < ActiveRecord::Migration
  def change
    create_table :commentvotes do |t|
      t.integer :vote_value, :default => 0
      t.references :user, :comment
      t.timestamps
    end

    create_table :postvotes do |t|
      t.integer :vote_value, :default => 0
      t.references :user, :post
      t.timestamps
    end
  end
end
