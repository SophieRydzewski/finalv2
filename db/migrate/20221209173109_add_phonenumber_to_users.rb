class AddPhonenumberToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :phonenumber, :integer
  end
end
