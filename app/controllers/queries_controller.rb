class QueriesController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :create
  before_action :verify_with_access_token, only: :create

  def show
    @query = Query.find(params[:id])
  end

  def create
    query_params = params.permit(:title, :body, :result, charts: [])
    @query = @current_user.queries.create!(query_params)
    render json: { url: query_url(@query) }
  end
end
