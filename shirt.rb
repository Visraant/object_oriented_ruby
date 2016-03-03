require './item.rb'

module StoreFront
  class Shirt < Item
    def initialize(input_options)
      super(input_options)
      @size = input_options[:size]
    end
    
    def print_info
      puts "#{@itemname} is #{@color}, costs #{@price} dollars, and is size #{@size}."
    end
  end
end