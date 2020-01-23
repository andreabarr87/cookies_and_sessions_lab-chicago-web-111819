class ProductsController < ApplicationController

	def index
		@products = cart
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)
		add_to_cart
		redirect_to products_path
	end

	private

	def product_params
		params.require(:product).permit(:product_name)
	end

end
