class Vote
  include Mongoid::Document
  include Mongoid::Timestamps

  field :user_id, type: Integer
  field :query_id, type: Integer
  field :points, type: Integer

  attr_accessible :points
  validates :points, presence: true

  has_many :users
  has_many :queries
end
