class ArtigosController < ApplicationController
	def index
	end

	def new 
		@artigo = Artigo.new
	end

	def create
		@artigo = Artigo.new(artigo_params) 
		@artigo.save
		flash[:success] = "Artigo foi criado com sucesso." 
		redirect_to artigos_path
	end

	private
	
	def artigo_params
		params.require(:artigo).permit(:titulo, :corpo) 
	end
end
