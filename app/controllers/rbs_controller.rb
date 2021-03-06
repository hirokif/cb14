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
    @rb = Rb.find(rb_params)
  end

  # GET /rbs/new
  def new
    @rb = Rb.new
  end

  # GET /rbs/1/edit
  def edit
    @rb = Rb.find(params[:id])
    @tois = Toi.find_all_by_grp_no(@rb.toi.grp.grp_no)
    #@tois = Toi.all
  end

  # POST /rbs
  # POST /rbs.json
  def create
    #@rb = Rb.new(rb_params)

    #respond_to do |format|
    #  if @rb.save
    #    format.html { redirect_to @rb, notice: 'Rb was successfully created.' }
    #    format.json { render action: 'show', status: :created, location: @rb }
    #  else
    #    format.html { render action: 'new' }
    #    format.json { render json: @rb.errors, status: :unprocessable_entity }
    #  end
    #end

    @toi = Toi.find(params[:toi_id])
    @rb = @toi.rbs.create(rb_params)
    redirect_to grp_toi_path(@toi.grp.id, @toi.id)
  end

  # PATCH/PUT /rbs/1
  # PATCH/PUT /rbs/1.json
  def update
    @rb = Rb.find(params[:id])
      if @rb.update(rb_params)
      #redirect_to grp_path(@toi.grp_id)
      redirect_to grp_toi_path(params[:grp_id],params[:toi_id])
      else
        render 'edit'
      end
  end

  def destroy
    @rb = Rb.find(params[:id])
    @rb.destroy
    redirect_to grp_toi_path(params[:grp_id],params[:toi_id])
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
