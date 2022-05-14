class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :product_brand
      t.string :product_name
      t.string :product_description
      t.string :product_image_url

      t.timestamps
    end
  end
end
