class Api::V1::AudiocardsController < ApplicationController
  # before_action :set_audiocard, only: [:show, :update, :destroy]

  # GET /audiocards
  def index
    @audiocards = Audiocard.all

    render json: @audiocards
  end

  # GET /audiocards/1
  def show
    render json: @audiocard
  end

  # POST /audiocards
  def create
    @audiocard = Audiocard.new(audiocard_params)

    if @audiocard.save
      render json: @audiocard, status: :created, location: @audiocard
    else
      render json: @audiocard.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /audiocards/1
  def update
    if @audiocard.update(audiocard_params)
      render json: @audiocard
    else
      render json: @audiocard.errors, status: :unprocessable_entity
    end
  end

  # DELETE /audiocards/1
  def destroy
    @audiocard.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_audiocard
      @audiocard = Audiocard.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def audiocard_params
      params.fetch(:audiocard, {})
    end
end
