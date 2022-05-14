# frozen_string_literal: true

module Types
  class ProductType < Types::BaseObject
    field :id, ID, null: false
    field :product_brand, String
    field :product_name, String
    field :product_description, String
    field :product_image_url, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    def full_name
      [object.product_brand, object.product_name].compact.join("")
    end
  end
end
