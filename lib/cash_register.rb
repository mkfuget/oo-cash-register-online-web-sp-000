class CashRegister
  attr_accessor :total 
  attr_accessor :transaction_list
  def initialize 
    @total = 0.0 
    @transaction_list = []
  end
  
  def add_item(item, price, quantity = 1)
    quantity.times do
      @total += price
      @transaction_list.push(
          {
            :item => item,
            :price => price
          }
        )
      end
    end
    
    def apply_discount(discount)
      @total *= ((100.0-discount)/100.0)
end 