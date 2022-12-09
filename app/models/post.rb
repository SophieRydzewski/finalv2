# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  image_url  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
class Post < ApplicationRecord
  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id" })
  has_many(:replies, { :class_name => "Reply", :foreign_key => "post_id", :dependent => :destroy })
end
