class CdksController < ApplicationController
  def index
    @corp = Corp.find_by_corp_no(params[:corp_id])
    @cdks = Cdk.find_all_by_corp_no(@corp.corp_no)

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private
    def cdk_params

    end

end