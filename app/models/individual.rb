class Individual < ActiveRecord::Base
  attr_accessible :biography, :first_name, :middle_name, :role, :surname
end
