# display home page =====================================================

get '/' do
	@categories = Category.all
	@products = Product.all
	
  erb :home
end

# search for a product or category ======================================

post '/search' do
  p params

  find_product = Product.where(title: params[:search]).first
  find_category = Category.where(name: params[:search]).first

  if find_product
    redirect "/categories/#{find_product.category_id}/products/#{find_product.id}"
  elsif find_category
    redirect "/categories/#{find_category.id}"
  else
    erb :'/search/search_not_found'
  end
end
