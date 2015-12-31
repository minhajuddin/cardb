class ModelTypesController < ApplicationController
  def index
    model = Model.find_by!(model_slug: params[:model_slug])
    render json: model
  end

  def create
    model = Model.find_by!(model_slug: params[:model_slug])
    mt = model.model_types.new(model_type_params)
    if mt.save
      render json: mt, serializer: ModelTypeFullSerializer
    else
      render json: {errors: mt.errors.full_messages}, status: :unprocessable_entity
    end
  end

  # TODO: this should be moved to application controller
  rescue_from ActiveRecord::RecordNotFound do
    render json: {}, status: :not_found
  end

  private
  def model_type_params
    mtp = params.permit(:base_price, :model_type_slug)
    mtp.merge(name: mtp[:model_type_slug])
  end
end
