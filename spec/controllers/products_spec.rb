require 'spec_helper'

describe ''

#   describe 'index controller' do
#   before do
#     categories = %W(General Cribs Strollers Toys)
#     categories.each { |category| Category.create!(name: category) }

#     tom = User.create!(first_name: "Tom", last_name: "Tom", username: "tomtom123", email: "tom@tom.com", encrypted_pw: "tomtom")

#     stroller = Product.create!(title: "Like New Stroller", description:"For sale!", price: 25, user_id: User.find_by(username: "tomtom123").id, category_id: Category.find_by(name: "Strollers").id)
#   end

#   describe 'GET /categories' do
#     it 'should display all categories' do
#       get '/'

#       expect(last_response.status).to eq(200)
#       expect(last_response.content_type).to start_with('text/html')
#       expect(last_response.body).to include("General")
#       expect(last_response.body).to include("Cribs")
#       expect(last_response.body).to include("Strollers")
#       expect(last_response.body).to include("Toys")

#     end
#   end

#   describe 'GET /categories/:category_id' do
#     it 'should display products within a specific category' do
#       categories = %W(General, Cribs, Strollers, Toys)
#       categories.each { |category| Category.create!(name: category) }

#       get '/'
      
#       expect(last_response.status).to eq(200)
#       expect(last_response.content_type).to start_with('text/html')
#       expect(last_response.body).to include("Like New Stroller")
#       expect(Category.pluck(:name)[2]).to eq("Strollers")
#     end
#   end

# end

  # describe 'POST /' do
  #   it '' do
  #     categories = %W(General, Cribs, Strollers, Toys)
  #     categories.each { |category| Category.create!(name: category) }

  #     post '/'
      
  #     # test for status
  #     # test for content type
  #     # test for location (since post is supposed to redirect)
  #   end
  # end