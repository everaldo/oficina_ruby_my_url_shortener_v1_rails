class ShortUrlsController < ApplicationController
  def new
    @short_url = ShortUrl.new
  end

  def create
		@short_url = ShortUrl.new(short_url_params)
		if @short_url.save
	    render :new, notice: 'Sucesso'
		else
			render :new, error: 'Erro'
		end
  end


	def show
		@short_url = ShortUrl.find_by(code: params[:code])
		redirect_to @short_url.url
	end

	private

	def short_url_params
		params.require(:short_url).permit(:url)
	end
end
