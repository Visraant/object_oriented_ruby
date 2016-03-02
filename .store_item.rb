#item1 = {:name => "nerf gun", :color => "red", :price => "30.00"}
#item2 = {name: "super soaker", color: "blue", price: "25.00"}
#item3 = {:name => "laser sword", :color => "green", :price => "20.00"}

#puts "#{item1[:name]} is #{item1[:color]} and costs #{item1[:price]}."
#puts "#{item2[:name]} is #{item2[:color]} and costs #{item2[:price]}."
#puts "#{item3[:name]} is #{item3[:color]} and costs #{item3[:price]}."


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

item1 = Item.new(price: 30.00, item_name: "nerf gun", color: "red")
item2 = Item.new(color: "blue", price: 25.00, item_name: "super soaker")
item3 = Item.new(color: "green", item_name: "laser sword", price: 20.00)

class Shirt < Item
  def initialize(input_options)
    super(input_options)
    @size = input_options[:size]
  end
  
  def print_info
    puts "#{@itemname} is #{@color}, costs #{@price} dollars, and is size #{@size}."
  end
end

shirt = Shirt.new(price: 10.00, item_name: "henley", color: "grey", size: "medium")

shirt.print_info
#item1.print_info
#item2.print_info
#item3.print_info
#item3.price_increase
#puts ''
#item3.print_info
#puts item1.itemname.upcase
#puts item2.color
#puts item2.price
