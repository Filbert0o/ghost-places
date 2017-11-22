class Ghost < ActiveRecord::Base
  validates :name, presence: true

  has_many :haunts
  has_many :places, through: :haunts
  has_many :victims
end
