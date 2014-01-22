class CorpsController < ApplicationController

  def index
    @corp = Corp.all
  end

  def show
  	@corp = Corp.find(params[:id])
  end 

  def new
  	@corp = Corp.new
  end

  def create
  	@corp = Corp.new(corp_params)
  	if @corp.save
  		redirect_to corps_path
  	else
  		render 'new'
  	end
  end

  def edit
  	@corp = Corp.find(params[:id]) 	
  end

  def update
  	@corp = Corp.find(params[:id])
  	if @corp.update(corp_params)
  		redirect_to corps_path
  	else
  		render 'edit'
  	end
  end

	def destroy
		@corp = Corp.find(params[:id])
		@corp.destroy
		redirect_to corps_path
	end



  private
  	def corp_params
  		params[:corp].permit(
  			:corp_no,
    		:corp_name,
    		:corp_namek,
    		:corp_posi,
    		:corp_rep,
    		:corp_repk,
    		:rep_bth,
    		:corp_add,
    		:corp_tel,
    		:corp_fax,
    		:corp_mail,
    		:cap,
    		:cy,
    		:emp,
    		:acc,
    		:corp2_name,
    		:corp2_namek,
    		:corp2_posi,
    		:corp2_rep,
    		:corp2_repk,
    		:rep2_bth,
    		:corp2_add,
    		:corp2_tel,
    		:corp2_fax,
    		:corp2_mail,
    		:created_at,
    		:updated_at
  			)
  	end
end
