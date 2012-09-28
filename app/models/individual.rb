# == Schema Information
#
# Table name: individuals
#
#  id          :integer          not null, primary key
#  role        :string(255)
#  first_name  :string(255)
#  middle_name :string(255)
#  surname     :string(255)
#  biography   :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  cast        :boolean
#

class Individual < ActiveRecord::Base
  attr_accessible :biography, :first_name, :middle_name, :role, :surname
  has_many :participations
  has_many :episodes, through: :participations
end
