class ToisController < ApplicationController

def create
  @grp = Grp.find(params[:grp_id])
  @toi = @grp.tois.create(toi_params)
  redirect_to grp_path(@grp.id)
end

def edit
  @toi = Toi.find(params[:id])
end

def update
  @toi = Toi.find(params[:id])
  if @toi.update(toi_params)
    redirect_to grp_path(@toi.grp_id)
  else
    render 'edit'
  end
end

def destroy
  @toi = Toi.find(params[:id])
  @toi.destroy
  redirect_to grp_path(params[:grp_id])
end

private
    def toi_params
      params[:toi].permit(:toi_name)
    end
end