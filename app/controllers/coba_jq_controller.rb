class CobaJqController < ApplicationController
  def index
  end

  def contoh_cari	
  end

  def service
  	service = params[:service]
  	@datas = Xservice.where('name like "%'+service+'%"')
  end

end
