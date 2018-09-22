require 'rails_helper'

describe OrderItem do
    it { should belong_to :order }
    it { should belong_to :product }
  
    it("Saves an order_item to the database") do
        @order = Order.new
        @product = Product.create(name:"test",description:"test",price:7,id:3)
        @item = @order.order_items.new(quantity:1, product_id: 3)
        @order.save!
        expect(@order.save).to(eq(true))
      end

    it("ensures the quantity is a non-negative number") do
        @order = Order.new
        @product = Product.create(name:"test",description:"test",price:7,id:3)
        @item = @order.order_items.new(quantity:-1, product_id: 3)
        expect(@order.save).to(eq(false))
      end
    

end