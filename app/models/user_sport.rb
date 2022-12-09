# == Schema Information
#
# Table name: user_sports
#
#  id         :integer          not null, primary key
#  city       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  sport_id   :integer
#  user_id    :integer
#
class UserSport < ApplicationRecord
  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id" })
  belongs_to(:sport, { :required => true, :class_name => "Sport", :foreign_key => "sport_id" })
end
