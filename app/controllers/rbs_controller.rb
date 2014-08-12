class RbsController < ApplicationController
  before_action :set_rb, only: [:show, :edit, :update, :destroy]

  # GET /rbs
  # GET /rbs.json
  def index
    @rbs = Rb.all
  end

  # GET /rbs/1
  # GET /rbs/1.json
  def show
  end

  # GET /rbs/new
  def new
    @rb = Rb.new
  end

  # GET /rbs/1/edit
  def edit
  end

  # POST /rbs
  # POST /rbs.json
  def create
    @rb = Rb.new(rb_params)

    respond_to do |format|
      if @rb.save
        format.html { redirect_to @rb, notice: 'Rb was successfully created.' }
        format.json { render action: 'show', status: :created, location: @rb }
      else
        format.html { render action: 'new' }
        format.json { render json: @rb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rbs/1
  # PATCH/PUT /rbs/1.json
  def update
    respond_to do |format|
      if @rb.update(rb_params)
        format.html { redirect_to @rb, notice: 'Rb was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @rb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rbs/1
  # DELETE /rbs/1.json
  def destroy
    @rb.destroy
    respond_to do |format|
      format.html { redirect_to rbs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rb
      @rb = Rb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rb_params
      params.require(:rb).permit(:rb_no, :rb_name, :toi_no)
    end
end
