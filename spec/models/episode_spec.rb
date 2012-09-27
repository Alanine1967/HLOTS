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

require 'spec_helper'

describe Episode do
  pending "add some examples to (or delete) #{__FILE__}"
end
