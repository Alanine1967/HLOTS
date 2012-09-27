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
#

class Individual < ActiveRecord::Base
  attr_accessible :biography, :first_name, :middle_name, :role, :surname
  belongs_to :participation
  has_many :episodes, through: :participation
end
