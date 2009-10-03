class AddEmailConfirmationToPots < ActiveRecord::Migration
  def self.up
    add_column :pots, :email_confirmation, :string
  end

  def self.down
    remove_column :pots, :email_confirmation
  end
end
