class Product < ApplicationRecord
  has_many :product_colors
  has_many :colors, through: :product_colors
  has_many :product_categories
  has_many :categories, through: :product_categories

  scope :by_category, -> (category_name) do
    joins(:categories).where("categories.name = ?", category_name)
  end
end
