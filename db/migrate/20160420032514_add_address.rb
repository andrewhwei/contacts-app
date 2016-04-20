class AddAddress < ActiveRecord::Migration
  def change
    add_column :contacts, :address, :string
  end
end
