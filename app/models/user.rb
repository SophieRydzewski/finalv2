# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  city            :string
#  email           :string
#  password_digest :string
#  username        :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
  has_secure_password

  has_many(:updates, { :class_name => "Post", :foreign_key => "user_id", :dependent => :destroy })
  has_many(:user_sports, { :class_name => "UserSport", :foreign_key => "user_id", :dependent => :destroy })
  has_many(:replies, { :class_name => "Reply", :foreign_key => "user_id", :dependent => :destroy })
end
