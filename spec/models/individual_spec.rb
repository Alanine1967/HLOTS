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

require 'spec_helper'

describe Individual do
  pending "add some examples to (or delete) #{__FILE__}"
end
