class CreateProductTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :product_types do |t|
      t.string :product_type_color
      t.string :product_type_size
      t.string :product_type_image_url
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
