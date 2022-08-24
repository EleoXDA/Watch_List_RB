class Movie < ApplicationRecord
  has_many :bookmarks, dependent: :destroy

  validates :title, uniqueness: true, allow_blank: true
  validates :overview, uniqueness: true
end
