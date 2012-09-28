# == Schema Information
#
# Table name: participations
#
#  id            :integer          not null, primary key
#  individual_id :integer
#  episode_id    :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Participation < ActiveRecord::Base
  attr_accessible :episode_id, :individual_id
  belongs_to :episode
  belongs_to :individual
end
