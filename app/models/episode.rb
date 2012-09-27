# == Schema Information
#
# Table name: episodes
#
#  id          :integer          not null, primary key
#  number      :integer
#  title       :text
#  first_shown :date
#  brief_desc  :string(255)
#  season_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Episode < ActiveRecord::Base
  attr_accessible :brief_desc, :first_shown, :number, :title
  belongs_to :season
  belongs_to :participation
  has_many :individuals, through: :participation
end
