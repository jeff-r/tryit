class RazorsController < ApplicationController
  before_action :set_razor, only: [:show, :edit, :update, :destroy]

  # GET /razors
  # GET /razors.json
  def index
    @razors = Razor.all
  end

  # GET /razors/1
  # GET /razors/1.json
  def show
  end

  # GET /razors/new
  def new
    @razor = Razor.new
  end

  # GET /razors/1/edit
  def edit
  end

  # POST /razors
  # POST /razors.json
  def create
    @razor = Razor.new(razor_params)

    respond_to do |format|
      if @razor.save
        format.html { redirect_to razors_path, notice: 'Razor was successfully created.' }
        format.json { render :show, status: :created, location: @razor }
      else
        format.html { render :new }
        format.json { render json: @razor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /razors/1
  # PATCH/PUT /razors/1.json
  def update
    respond_to do |format|
      if @razor.update(razor_params)
        format.html { redirect_to @razor, notice: 'Razor was successfully updated.' }
        format.json { render :show, status: :ok, location: @razor }
      else
        format.html { render :edit }
        format.json { render json: @razor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /razors/1
  # DELETE /razors/1.json
  def destroy
    @razor.destroy
    respond_to do |format|
      format.html { redirect_to razors_url, notice: 'Razor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_razor
      @razor = Razor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def razor_params
      params.require(:razor).permit(:name)
    end
end
