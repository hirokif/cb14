class ToisController < ApplicationController

def create
 #@grp = Grp.find(params[:grp_id])
  @grp = Grp.find(:first, :conditions => ["grp_no = ?", params[:grp_no]])
  @toi = @grp.tois.create(toi_params)
  redirect_to grp_path(@grp.id)
end

def edit
 #@toi = Toi.find(params[:id])
  @toi = Toi.find(params[:toi_no])
end

def update
 #@toi = Toi.find(params[:id])
  @toi = Toi.find(params[:toi_no])
  if @toi.update(toi_params)
   #redirect_to grp_path(@toi.grp_id)
    redirect_to grp_path(@toi.grp_no)
  else
    render 'edit'
  end
end

def destroy
 #@toi = Toi.find(params[:id])
  @toi = Toi.find(params[:toi_no])
  @toi.destroy
 #redirect_to grp_path(params[:grp_id])
  redirect_to grp_path(params[:grp_no])
end

private
    def toi_params
      params[:toi].permit(:toi_name)
    end
end