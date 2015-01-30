# == Schema Information
#
# Table name: projects
#
#  id                   :integer          not null, primary key
#  display_name         :string(255)
#  thumb_path           :string(255)
#  created_at           :datetime
#  updated_at           :datetime
#  overview             :text
#  stack                :string(255)
#  colour               :string(255)
#  demo_link            :string(255)
#  github_link          :string(255)
#  project_type         :string(255)
#  project_length       :string(255)
#  integration          :string(255)
#  technical_challenges :text
#

class Project < ActiveRecord::Base
  has_many :images, as: :imageable
end
