class Haunt < ActiveRecord::Base
  validates :ghost_id, presence: true
  validates :place_id, presence: true

  belongs_to :ghost
  belongs_to :place

end
