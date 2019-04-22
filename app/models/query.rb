class Query
  include Mongoid::Document
  include Mongoid::Timestamps

  field :content, type: String
  field :hidden, type: Boolean, default: false

  attr_accessible :content
  validates :content, presence: true

  has_many :votes

  def self.topN(n)
    Query.all
  end

  def self.search(query)
    #Query
  end
end
