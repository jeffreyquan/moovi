class Genre < ApplicationRecord
  has_and_belongs_to_many :movies

  validates :name, :presence => true, :uniqueness => { :case_sensitive => false }
end
