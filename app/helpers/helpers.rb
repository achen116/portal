helpers do

	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end

	def all_categories
		@all_categories = Category.all
	end

	def category
		@category = Category.find(params[:category_id])
	end

	def product
	  @product = Product.where(id: params[:id], category_id: params[:category_id]).first
	end

  def img(name)
    "<img src='images/#{name}' alt='#{name}' />"
  end

end
