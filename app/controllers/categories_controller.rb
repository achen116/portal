# display categories list ===============================================

get '/categories' do
  @categories = Category.all
  erb :'/categories/all_categories'
end

# display specific category =============================================

get '/categories/:id' do
  category = Category.find(params[:id])
  products = Product.where(category_id: params[:id])

  if request.xhr?
	  content_type :json
		(erb :'/categories/single_category', layout: false, locals: {category: category, products: products}).to_json
	else
		erb :'/categories/single_category', locals: {category: category, products: products}
	end
end
