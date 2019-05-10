require './lib/node'
require './lib/binary_search_tree'
require 'pry'

RSpec.describe 'tree class' do
  it 'can create a new tree' do
    tree = BinarySearchTree.new

    expect(tree).to be_an_instance_of(BinarySearchTree)
  end

  it 'can insert a new node' do
    tree = BinarySearchTree.new
    inserted_node = tree.insert(61, "Bill & Ted's Excellent Adventure")
# binding.pry
    expect(inserted_node).to eq(61)
    # expect(inserted_node.left_link).to eq(0)
    # expect(inserted_node.right_link).to eq(0)
    # expect(tree.insert(16, "Johnny English")).to eq(16)
    # expect(tree.insert(92, "Sharknado 3")).to eq(92)
    # expect(tree.insert(50, "Hannibal Buress: Animal Furnace")).to eq(50)
  end

  it 'can insert 2 nodes' do
    tree = BinarySearchTree.new
    node1 = tree.insert(61, "Bill & Ted's Excellent Adventure")
    node2 = tree.insert(16, "Johnny English")

    expect(node1).to eq(61)
    expect(node2).to eq(16)
  end

  it 'checks for scores before entering' do
    tree = BinarySearchTree.new
    node1 = tree.insert(61, "Bill & Ted's Excellent Adventure")
    node2 = tree.insert(161, "Johnny English")

    expect(node1).to eq(61)
    expect(node2).to_not eq(161)
  end

  it 'can check for the presence of the score'
end
