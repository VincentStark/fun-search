class QueriesController < ApplicationController
  protect_from_forgery except: :create
  before_filter :trusted_collector, only: :create
  before_filter :authenticate_user!

  def index
    @queries = Query.all
    if @queries.length > 0
      render 'index'
    else
      flash[:warning] = 'The list is empty'
      redirect_to root_path
    end
  end

  def create
    params[:data].each do |query|
      Query.create_or_update(query)
    end

    head :ok
  end
end
