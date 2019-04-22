class StaticPagesController < ApplicationController
  def index
    @queries = Query.topN(7)
  end
end
