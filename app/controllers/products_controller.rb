# display products list =================================================

get '/products' do
  @products = Product.all
  erb :'/products/all_products'
end

# create new product from a specific category ===========================

get '/categories/:category_id/products/new' do

  if current_user
    content_type :html
    erb :'/products/add_product', layout: false
  else
    content_type :html
    erb :'/sessions/sign_in', layout: false
  end
end

post '/categories/:category_id/products' do
  new_product = Product.new( title:       params[:title],
                             description: params[:description],
                             price:       params[:price],
                             user_id:     current_user.id,
                             category_id: Category.where(name: params[:category]).first.id
                            )

  if new_product.save
    redirect "categories/#{new_product.category_id}/products/#{new_product.id}"
  else
    @add_product_errors = new_product.errors.full_messages
    erb :'/products/add_product', layout: false
  end
end

# display specific product ==============================================

get '/categories/:category_id/products/:id' do
  @contact_email = User.where(id: product.user_id).first.email

  erb :'/products/single_product'
end

# edit specific product =================================================

get '/categories/:category_id/products/:id/edit' do
  content_type :html
  erb :'/products/edit_product', layout: false
end

put '/categories/:category_id/products/:id' do
  update_product = Product.where(id: params[:id], category_id: params[:category_id]).first
  update_product.attributes = { title:       params[:title],
                                description: params[:description],
                                price:       params[:price],
                                category_id: Category.where(name: params[:category]).first.id
                              }

  if update_product.save
    content_type :html
    erb :'/products/single_product', layout: false
  else
    @edit_product_errors = update_product.errors.full_messages #not catching error
    erb :'/products/edit_product', layout: false
  end
end

# delete specific product ===============================================

delete '/categories/:category_id/products/:id' do
  category = Category.find(params[:category_id])
  product = Product.where(id: params[:id], category_id: params[:category_id]).first

  product.destroy

  redirect "/account/#{current_user.id}"
end
