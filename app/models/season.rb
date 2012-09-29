# == Schema Information
#
# Table name: seasons
#
#  id          :integer          not null, primary key
#  number      :integer
#  first_shown :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Season < ActiveRecord::Base
  attr_accessible :first_shown, :number
  has_many :episodes, dependent: :destroy
end
