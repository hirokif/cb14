class CdcsController < ApplicationController
  def new
    @cdc = Cdc.new
    @corp = Corp.find(params[:corp_id])
    @tois = Toi.find_all_by_grp_no(params[:grp_no])
    @grp = Grp.find(params[:grp_no])
  end
end
