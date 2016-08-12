class Node
  attr_accessor :value, :address

  def initialize( value, address)
    @value = value
    @address = address
  end
end

class LinkedList
  def initialize ( value )
    @start = Node.new( value, nil)
  end

  def add_node( value )
    current_node = @start
    until current_node.address == nil
      current_node = current_node.address
    end
    current_node.address = Node.new( value , nil )
  end

  def delete_node(value)
    current_node = @start

    if current_node.value == value
      @start = current_node.address
    else
      while current_node.address != nil && (current_node.address).value != value
        current_node = current_node.address
      end
      current_node.address = (current_node.address).address
    end
  end

  def print_list
    current_node = @start
    until current_node == nil
      puts current_node.value
      current_node = current_node.address
    end
  end

end

list = LinkedList.new(1)
list.add_node(2)
list.add_node(3)
list.add_node(4)
list.delete_node(1)
list.print_list