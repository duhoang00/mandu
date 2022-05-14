# frozen_string_literal: true

module Types
  class ProductTypesType < Types::BaseObject
    field :id, ID, null: false
    field :product_type_color, String, null: false
    field :product_type_size, String, null: false
    field :product_type_image_url, String, null: true

    field :product_id, Integer, null: false
    field :product, Types::ProductType, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
