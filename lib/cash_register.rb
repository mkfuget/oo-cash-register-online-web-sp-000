class CashRegister
  attr_accessor :total 
  attr_accessor :transaction_list
  attr_accessor :discount

  def initialize(discount = 0)
    @total = 0.0 
    @transaction_list = []
    @discount = discount
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
    
    def apply_discount
      if discount == 0
        return 
      discount = 20
      @total *= ((100.0-@discount)/100.0)
      return "After the discount, the total comes to $#{@total.round}." 
    end
end 