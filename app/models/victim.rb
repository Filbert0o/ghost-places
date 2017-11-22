class Victim < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :place_id, presence: true

  belongs_to :ghost
  belongs_to :place
end
