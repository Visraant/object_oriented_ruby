module StoreFront
  class Item
    attr_reader :itemname, :color, :price
    def initialize(input_options)
      @itemname = input_options[:item_name]
      @color = input_options[:color]
      @price = input_options[:price]
    end

    def print_info
      puts "#{@itemname} is #{@color} and costs #{@price} dollars."
    end

    def price_increase
      @price = 1.1 * @price
    end
  end
end