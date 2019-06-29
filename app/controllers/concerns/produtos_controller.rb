class ProdutosController < ApplicationController



	def show
		Produto.find(params[:id]).get
	end

	def index
		@produtos = Produto.all
	end

	def new
		@produto = Produto.new
	end

	def create
		@produto = Produto.new
		@produto.titulo = params[:produto][:titulo]
		@produto.conteudo = params[:produto][:conteudo]
		@produto.preco = params[:produto][:preco]
		@produto.url = params[:produto][:url]
		@produto.ativo = params[:produto][:ativo]
		@produto.save!
		redirect_to :root
	end

	def destroy
		Produto.find(params[:id]).destroy!
		redirect_to :root
	end

end