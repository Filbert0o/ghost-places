class Place < ActiveRecord::Base
  validates :name, presence: true

  has_many :haunts
  has_many :ghosts, through: :haunts
  has_many :victims
end
