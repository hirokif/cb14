class CdcsController < ApplicationController
  def new
    @cdc = Cdc.new
    @corp = Corp.find(params[:corp_id])
    @tois = Toi.find_all_by_grp_no(params[:grp_no])
    @grp = Grp.find(params[:grp_no])
  end

  def create
    @corp = Corp.find(params[:corp_id])
    @cdc = @corp.cdcs.create(cdc_params)
    redirect_to corp_path(@corp.corp_no)
  end

  def edit
    @cdc = Cdc.find(params[:id])
    @corp = Corp.find(params[:corp_id])
    @tois = Toi.all
  end

  def update
    @cdc = Cdc.find(params[:id])
    if @cdc.update(cdc_params)
      redirect_to corp_path(@cdc.corp_no)
    else
      render 'edit'
    end
  end

   private
    def cdc_params
      params.require(:cdc).permit(:toi_no, :lno, :dgl, :amv)
    end

end
