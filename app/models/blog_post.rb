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

  before_validation :calculate_min_read

  private
  
  # Most humans read about 250-300 words per minute, with 5 characters per word (source: http://en.wikipedia.org/wiki/Words_per_minute)
  # Therefore, every minute a human should average about 1375 characters.
  def calculate_min_read  
    self.min_read = (content.length / 1375.0).ceil
  end
end
