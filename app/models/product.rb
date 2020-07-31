class Product < ApplicationRecord
    has_many :product_colors
    has_many :colors, through: :product_colors
end
