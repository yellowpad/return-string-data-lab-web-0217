class ProductsController < ApplicationController
	def index 
		@products = Product.all
	end

	def new
		@product = Product.new
	end
	
	def create
		
	end

	def inventory
		@product = Product.find(params[:id])
		if @product.inventory || @product.inventory == 0 

			var = 'true'
		else 

			var = 'false'
		end
		render plain: var
	end

	def description
		@product = Product.find(params[:id])
		render plain: @product.description
	end
end
