class RootController < ApplicationController
  QUERY_DISPLAY_LIMIT = 30

  def index
    @queries = Query.first QUERY_DISPLAY_LIMIT
  end
end
