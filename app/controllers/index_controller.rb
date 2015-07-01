# display home page =====================================================

get '/' do
	@categories = Category.all
	@products = Product.all
	
  erb :home
end

# search for a product or category ======================================

post '/search' do
  @search = params[:search]

  @product_results = Product.where('title || description ILIKE ?', "%#{@search}%")
  find_category = Category.where(name: params[:search]).first

  if @product_results
    erb :'/search/search_results'
  elsif find_category
    redirect "/categories/#{find_category.id}"
  else
    erb :'/search/search_not_found'
  end
end
