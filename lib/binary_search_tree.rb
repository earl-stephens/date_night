require 'pry'
require './lib/node'
class BinarySearchTree
  attr_reader :first_node

  def initialize
    @first_node = Node.new(nil, nil)
  end

  def insert(score, title)
    if score < 0 || score > 100
      exit
    else
    if @first_node.score == nil
      next_link = @first_node.right_link = Node.new(score, title)
    else
      next_link = @first_link.right_link
      until next_link.score < score
        next_link = next_link.right_link
      end
      next_link.right_link = Node.new(score, title)
    end
    next_link.score
  end
end


end
