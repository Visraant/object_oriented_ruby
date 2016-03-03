require './item.rb'
require './shirt.rb'

shirt = StoreFront::Shirt.new(price: 10.00, item_name: "henley", color: "grey", size: "medium")

shirt.print_info