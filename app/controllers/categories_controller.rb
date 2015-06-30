# display categories list ===============================================

get '/categories' do
  @categories = Category.all
  erb :'/categories/all_categories'
end

# display specific category =============================================

get '/categories/:id' do
  category = Category.find(params[:id])
  products = Product.where(category_id: params[:id])

  content_type :html
	erb :'/categories/single_category', layout: false, locals: {category: category, products: products}
end
