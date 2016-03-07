class AirshipsController < ApplicationController
  before_action :set_airship, only: [:show, :edit, :update, :destroy]

  # GET /airships
  # GET /airships.json
  def index
    @airships = Airship.all
  end

  # GET /airships/1
  # GET /airships/1.json
  def show
  end

  # GET /airships/new
  def new
    @airship = Airship.new
  end

  # GET /airships/1/edit
  def edit
  end

  # POST /airships
  # POST /airships.json
  def create
    @airship = Airship.new(airship_params)

    respond_to do |format|
      if @airship.save
        format.html { redirect_to @airship, notice: 'Airship was successfully created.' }
        format.json { render :show, status: :created, location: @airship }
      else
        format.html { render :new }
        format.json { render json: @airship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /airships/1
  # PATCH/PUT /airships/1.json
  def update
    respond_to do |format|
      if @airship.update(airship_params)
        format.html { redirect_to @airship, notice: 'Airship was successfully updated.' }
        format.json { render :show, status: :ok, location: @airship }
      else
        format.html { render :edit }
        format.json { render json: @airship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /airships/1
  # DELETE /airships/1.json
  def destroy
    @airship.destroy
    respond_to do |format|
      format.html { redirect_to airships_url, notice: 'Airship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_airship
      @airship = Airship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def airship_params
      params.require(:airship).permit(:ship_code, :ship_type, :capacity)
    end
end
