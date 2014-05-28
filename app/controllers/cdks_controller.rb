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
    redirect_to corp_path(@corp.corp_no)
  end

  def edit
    @cdk = Cdk.find(params[:id])
    @corp = Corp.find(params[:corp_id])
    @tois = Toi.all
  end

  def update
    @cdk = Cdk.find(params[:id])
    if @cdk.update(cdk_params)
      redirect_to corp_path(@cdk.corp_no)
    else
      render 'edit'
    end
  end

def new
  @cdk = Cdk.new
  @corp = Corp.find(params[:corp_id])
  @tois = Toi.all
  #@tois1 = Toi.find_all_by_grp_no(1)
end

  def destroy

  end

  private
    def cdk_params
      params.require(:cdk).permit(:toi_no, :pp, :mr, :egr_fr, :egr_bb, :egr_sr, :egr_or)
    end

end