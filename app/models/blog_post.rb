# == Schema Information
#
# Table name: blog_posts
#
#  id         :integer          not null, primary key
#  content    :text
#  abstract   :text
#  title      :string(255)
#  author     :string(255)
#  min_read   :integer
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#

class BlogPost < ActiveRecord::Base
  belongs_to :user
  has_many :images, as: :imageable
end
