class QueriesController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]

  def create
    query_string = params[:query] || "{}"
    query_variables = params[:variables] || {}
    result = BlogSchema.execute(query_string, variables: query_variables)
    render json: result
  end
end