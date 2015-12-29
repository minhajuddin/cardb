class ModelTypesController < ApplicationController
  def index
    model = Model.find_by!(model_slug: params[:model_slug])
    render json: model
  end

  # TODO: this should be moved to application controller
  rescue_from ActiveRecord::RecordNotFound do
    render json: {}, status: :not_found
  end
end
