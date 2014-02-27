class CdksController < ApplicationController
  def index
    @corp = Corp.find_by_corp_no(params[:corp_id])
    @cdks = Cdk.find_all_by_corp_no(@corp.corp_no)
    @grps = Grp.all
    @tois = Toi.all
  end

  def create
    @corp = Corp.find(params[:corp_id])
    @cdk = @corp.cdks.create(cdk_params)
    redirect_to corp_path(@corp.id)
  end

  def edit
    @cdk = Cdk.find(params[:id])
  end

  def update

  end

  def destroy

  end

  private
    def cdk_params
      params.require(:cdk).permit(:pp, :mr, :egr_fr, :egr_bb, :egr_sr, :egr_or)
    end

end