require './lib/node'

RSpec.describe 'node class' do
  it 'can create a new node' do
    node = Node.new(35, 'Twister')

    expect(node).to be_an_instance_of(Node)
    expect(node.score).to eq(35)
    expect(node.title).to eq('Twister')
    expect(node.left_link).to eq(nil)
    expect(node.right_link).to eq(nil)
  end
end
