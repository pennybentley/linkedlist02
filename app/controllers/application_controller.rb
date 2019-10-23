class ApplicationController < ActionController::Base
end

class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  print "#{list_node.value} --> "
  if list_node.next_node.nil?
    print "nil\n"
    return
  else
    print_values(list_node.next_node)
  end
end

def reverse_list(list,previous=nil)
 
 if list
    #set next to next node
    next_node = list.next_node
    #set next node to previous (nil on pass 1)
    list.next_node = previous
    reverse_list(next_node, list)
  end
  
end

# create the linked list
node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)


#print linked list as is
print_values(node3)

#separator
puts "---------"

#reverse linked list via recursion and print it
revlist = reverse_list(node3)

print_values(node1)