class Item < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :list
  validates :list_id, presence: true
end
