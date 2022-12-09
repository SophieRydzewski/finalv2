class AddCityToUserSports < ActiveRecord::Migration[6.0]
  def change
    add_column :user_sports, :city, :string
  end
end
