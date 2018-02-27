class Place < ApplicationRecord

belongs_to :user
has_many :comments, dependent: :destroy
has_many :photos, dependent: :destroy

geocoded_by :address
after_validation :geocode

validates :name, length: { minimum: 3 }, presence: true
validates :address, presence: true
validates :description, presence: true

paginates_per 5


end
