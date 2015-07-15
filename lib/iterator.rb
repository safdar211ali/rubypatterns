class Inventory
  include Enumerable
  attr_reader :items

  def initialize
    @items = []
  end

  def add(item)
    @items << item
  end

  def each(&block)
    @items.each(&block)
  end
end

class Item
  attr_accessor :name,:cost

  def initialize
    @cost = 0
    @name =''
  end

  def <=>(other)
    cost <=>other.cost
  end
end


class InventoryIterator
  def initialize(inventory)
    @items = inventory.items
    @index = 0
  end

  def has_next?
    @index < @items.size
  end

  def next
    value = @items[@index]
    @index +=1
    value
  end
end

item1 = Item.new
item1.cost = 20
item1.name = 'fan'

item2 = Item.new
item2.cost = 10
item2.name = 'table'

inventory = Inventory.new
inventory.add(item1)
inventory.add(item2)

File.open('myfile', 'w') { |file| file.write inventory.items.each  { |n| n.cost } }

