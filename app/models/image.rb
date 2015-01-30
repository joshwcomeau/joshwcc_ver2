# == Schema Information
#
# Table name: images
#
#  id             :integer          not null, primary key
#  src            :string(255)
#  placement      :integer
#  created_at     :datetime
#  updated_at     :datetime
#  imageable_id   :integer
#  imageable_type :string(255)
#

class Image < ActiveRecord::Base
  belongs_to :imageable, polymorphic: true
end
