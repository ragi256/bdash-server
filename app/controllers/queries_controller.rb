class QueriesController < ApplicationController
  def show
    @query = Query.find(params[:id])
  end

  def create
    query_params = params.permit(:title, :body, :result, charts: [])
    @query = Query.create!(query_params)
    render json: { url: query_url(@query) }
  end
end
