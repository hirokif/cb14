class ToisController < ApplicationController

def create
  @grp = Grp.find(params[:grp_id])
  #@grp = Grp.find_by(grp_no: params[:grp_no])
  #@grp = Grp.find(:first, :conditions => ["grp_no = ?", params[:grp_no]])
  #@toi = @grp.tois.create(toi_params)
  @toi = @grp.tois.create(toi_params)
  redirect_to grp_path(@grp.id)
end

def edit
  @toi = Toi.find(params[:id])
  @grps = Grp.all
end

def show
  @toi = Toi.find(params[:id])
end

def update
  @toi = Toi.find(params[:id])
  if @toi.update(toi_params)
    #redirect_to grp_path(@toi.grp_id)
    redirect_to grp_path(@toi.grp_no)
  else
    render 'edit'
  end
end

def destroy
  @toi = Toi.find(params[:id])
#@toi = Toi.find(params[:toi_no])
  @toi.destroy
  redirect_to grp_path(params[:grp_id])
 #redirect_to grp_path(params[:grp_no])
end

private
    def toi_params
      #params[:toi].permit(:toi_name, :toi_no, :grp_no)
      params.require(:toi).permit(:toi_no, :toi_name, :grp_no)
    end
end