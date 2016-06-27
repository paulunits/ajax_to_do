class List < ActiveRecord::Base
  # Remember to create a migration!
  has_many :items
end
