require "pry"
class CashRegister
attr_accessor :total, :title, :price, :product
attr_reader :discount, :quantity, :items

def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = []
end

def total
  @total
end

def add_item(product, price, quantity=1)
  @product = product
  @price = price
  @total = total + price * quantity
  quantity.times do @items << product
  end
end

def apply_discount

  if discount == 0
  return "There is no discount to apply."
  else
  @total = total - (total * discount/100)
  return "After the discount, the total comes to $#{@total}."
end
end

def void_last_transaction
  @total = total-price
end

end


# describe '#total' do
#   it 'returns the current total' do
#     cash_register.total = 100
#     expect(cash_register.total).to eq(100)
#   end
# end
# binding.pry
# 0
