class Api::V1::AudiocardsController < ApplicationController
  before_action :set_audiocard, only: [:show, :update, :destroy]

  # GET /audiocards
  def index
    if logged_in?
      @audiocards = current_user.audiocards
      render json: AudiocardSerializer.new(@audiocards)
    else  
      render json: {
        error: "Must be logged in"
      }
    end
  end

  # GET /audiocards/1
  def show
    render json: @audiocard
  end

  # POST /audiocards
  def create
    @audiocard = Audiocard.new(audiocard_params)
    
    if @audiocard.save
      render json: AudiocardSerializer.new(@audiocard), status: :created
    else
      error_resp = {
        error: @audiocard.errors.full_messages.to_sentence
      }
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
      # params[:audiocard][:tags] ||=[]
      params.require(:audiocard).permit(:category, :soundfile, :soundster, :image, :favorite, :created_at, :user_id, tags: [])
    end
end
