class Product < ApplicationRecord
    has_many :product_colors
    has_many :colors, through: :product_colors
    has_many :product_categories
    has_many :categories, through: :product_categories
end
