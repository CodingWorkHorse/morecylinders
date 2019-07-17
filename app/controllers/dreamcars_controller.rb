class DreamcarsController < ApplicationController
  before_action :set_dreamcar, only: [:show, :edit, :update, :destroy]

  # GET /dreamcars
  # GET /dreamcars.json
  def index
    @dreamcars = Dreamcar.all
  end

  # GET /dreamcars/1
  # GET /dreamcars/1.json
  def show
  end

  # GET /dreamcars/new
  def new
    @dreamcar = Dreamcar.new
  end

  # GET /dreamcars/1/edit
  def edit
  end

  # POST /dreamcars
  # POST /dreamcars.json
  def create
    @dreamcar = Dreamcar.new(dreamcar_params)

    respond_to do |format|
      if @dreamcar.save
        format.html { redirect_to @dreamcar, notice: 'Dreamcar was successfully created.' }
        format.json { render :show, status: :created, location: @dreamcar }
      else
        format.html { render :new }
        format.json { render json: @dreamcar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dreamcars/1
  # PATCH/PUT /dreamcars/1.json
  def update
    respond_to do |format|
      if @dreamcar.update(dreamcar_params)
        format.html { redirect_to @dreamcar, notice: 'Dreamcar was successfully updated.' }
        format.json { render :show, status: :ok, location: @dreamcar }
      else
        format.html { render :edit }
        format.json { render json: @dreamcar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dreamcars/1
  # DELETE /dreamcars/1.json
  def destroy
    @dreamcar.destroy
    respond_to do |format|
      format.html { redirect_to dreamcars_url, notice: 'Dreamcar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dreamcar
      @dreamcar = Dreamcar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dreamcar_params
      params.require(:dreamcar).permit(:user, :year, :trim, :exterior_color, :interior_color, :engine, :transmisson, :price, :extra_column)
    end
end
