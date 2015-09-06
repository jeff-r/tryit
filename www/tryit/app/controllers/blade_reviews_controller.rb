class BladeReviewsController < ApplicationController
  before_action :set_blade_review, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /blade_reviews
  # GET /blade_reviews.json
  def index
    @blade_reviews = current_user.blade_reviews
  end

  # GET /blade_reviews/1
  # GET /blade_reviews/1.json
  def show
  end

  # GET /blade_reviews/new
  def new
    @blade_review = BladeReview.new
    @blade_review.blade_id = params[:blade_id]
    @blade_review.razor_id = params[:razor_id]
    @blade_review.date = Time.now
  end

  # GET /blade_reviews/1/edit
  def edit
  end

  # POST /blade_reviews
  # POST /blade_reviews.json
  def create
    @blade_review = BladeReview.new(blade_review_params)
    @blade_review.user = current_user

    @blade_review.date = Time.now unless @blade_review.date

    respond_to do |format|
      if @blade_review.save
        format.html { redirect_to blade_reviews_path, notice: 'Blade review was successfully created.' }
        format.json { render :show, status: :created, location: @blade_review }
      else
        format.html { render :new }
        format.json { render json: @blade_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blade_reviews/1
  # PATCH/PUT /blade_reviews/1.json
  def update
    respond_to do |format|
      if @blade_review.update(blade_review_params)
        format.html { redirect_to blade_reviews_path, notice: 'Blade review was successfully updated.' }
        format.json { render :show, status: :ok, location: @blade_review }
      else
        format.html { render :edit }
        format.json { render json: @blade_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blade_reviews/1
  # DELETE /blade_reviews/1.json
  def destroy
    @blade_review.destroy
    respond_to do |format|
      format.html { redirect_to blade_reviews_url, notice: 'Blade review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blade_review
      @blade_review = BladeReview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blade_review_params
      params.require(:blade_review).permit(:text, :date, :razor_id, :blade_id)
    end
end
