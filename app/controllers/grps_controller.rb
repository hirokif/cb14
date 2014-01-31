class GrpsController < ApplicationController

  def index
    @grp = Grp.all.order("grp_no")
  end

  def show
    @grp = Grp.find(params[:id])
  end

  def new
    @grp = Grp.new
  end

  def create
    @grp = Grp.new(grp_params)
    if @grp.save
      redirect_to grps_path
    else
      render 'new'
    end
  end

  def edit
    @grp = Grp.find(params[:id])
  end
 
  def update
    @grp = Grp.find(params[:id])
    if @grp.update(grp_params)
      redirect_to grps_path
    else
      render 'edit'
    end
  end

  def destroy
  	@grp = Grp.find(params[:id])
  	@grp.destroy
  	redirect_to grps_path
  end


  private

    def grp_params
      params[:grp].permit(:grp_name, :grp_no)
    end

end