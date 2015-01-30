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

require 'rails_helper'

RSpec.describe Image, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
