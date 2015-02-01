# == Schema Information
#
# Table name: blog_posts
#
#  id           :integer          not null, primary key
#  content      :text
#  abstract     :text
#  title        :string(255)
#  author       :string(255)
#  min_read     :integer
#  created_at   :datetime
#  updated_at   :datetime
#  user_id      :integer
#  featured     :boolean
#  subtitle     :string(255)
#  colour       :string(255)
#  published    :boolean
#  published_at :datetime
#

require 'rails_helper'

RSpec.describe BlogPost, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
