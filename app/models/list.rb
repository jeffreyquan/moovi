class List < ApplicationRecord
  belongs_to :user, :optional => true
  has_and_belongs_to_many :movies
  has_and_belongs_to_many :actors
  has_and_belongs_to_many :directors

  validates_uniqueness_of :name, scope: :user_id
  validates :name, :presence => true
end
