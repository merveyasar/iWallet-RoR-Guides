class Product < ApplicationRecord
  include Notifications

  has_one_attached :featured_image
  has_rich_text :description

  validates :name, presence: true
  validates :inventory_count, numericality: { greater_than_or_equal_to: 0 }

  scope :search_by_name, ->(query) {
    if query.present?
      where("name LIKE ?", "%#{sanitize_sql_like(query)}%")
    end
  }
end
