class AddImageToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column(:products, :product_img, :string)
  end
end
