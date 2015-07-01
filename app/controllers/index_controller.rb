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

  if @search == "" || @product_results.empty?
    erb :'/search/search_not_found'
  elsif @product_results
    erb :'/search/search_results'
  end
end
