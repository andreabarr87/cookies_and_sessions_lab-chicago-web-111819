class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :cart

  def cart
    session[:cart] ||= []
    #load cart or create new
  end

  def add_to_cart
		@product = Product.find_by(id: params[:id])
		#get product

		current_cart << @product.id
		#add product
	   
		session[:cart] = cart
		#session method == save new cart
	end

end
