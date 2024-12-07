class RecordsController < ApplicationController
  before_action :set_record, only: [:show, :update, :destroy]

  # GET /records
  def index
    @records = Record.all
    render json: @records
  end

  # POST /records
  def create
    @record = Record.new(record_params)
    if @record.save
      render json: @record, status: :created
    else
      render json: { errors: @record.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # GET /records/:id
  def show
    render json: @record
  end

  # PUT /records/:id
  def update
    if @record.update(record_params)
      render json: @record
    else
      render json: { errors: @record.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # DELETE /records/:id
  def destroy
    @record.destroy
    head :no_content
  end

  private

  def set_record
    @record = Record.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'Record not found' }, status: :not_found
  end

  def record_params
    params.require(:record).permit(:field1, :field2, :field3, :field4)
  end
end