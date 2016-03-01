#item1 = {:name => "nerf gun", :color => "red", :price => "30.00"}
#item2 = {name: "super soaker", color: "blue", price: "25.00"}
#item3 = {:name => "laser sword", :color => "green", :price => "20.00"}

#puts "#{item1[:name]} is #{item1[:color]} and costs #{item1[:price]}."
#puts "#{item2[:name]} is #{item2[:color]} and costs #{item2[:price]}."
#puts "#{item3[:name]} is #{item3[:color]} and costs #{item3[:price]}."


class Item
  attr_reader :itemname, :color, :price
  def initialize(input_item_name, input_color, input_price)
    @itemname = input_item_name
    @color = input_color
    @price = input_price
  end

  def print_info
    puts "#{@itemname} is #{@color} and costs #{@price} dollars."
  end

  def price_increase
    @price = 1.1 * @price
  end
end

item1 = Item.new("nerf gun", "red", 30.00)
item2 = Item.new("super soaker", "blue", 25.00)
item3 = Item.new("laser sword", "green", 20.00)

item1.print_info
item2.print_info
item3.print_info
item3.price_increase
puts ''
item3.print_info
puts item1.itemname.upcase
puts item2.color
puts item2.price
