class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, presence: true, uniqueness: true, allow_blank: false
  validates :overview, presence: true, uniqueness: true, allow_blank: false
end
