class Product < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  validates  :title, presence: true
  validates  :description, presence: true
  validates  :price, presence: true
  validates  :user_id, presence: true
  validates  :category_id, presence: true

end
