# == Schema Information
#
# Table name: sports
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Sport < ApplicationRecord
  has_many(:user_sports, { :class_name => "UserSport", :foreign_key => "sport_id", :dependent => :destroy })
end
