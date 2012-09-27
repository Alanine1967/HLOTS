class Episode < ActiveRecord::Base
  attr_accessible :brief_desc, :first_shown, :number, :title
end
