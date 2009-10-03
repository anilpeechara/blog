class AddEmailToPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :email, :string
  end

  def self.down
    remove_column :posts, :email
  end
end
