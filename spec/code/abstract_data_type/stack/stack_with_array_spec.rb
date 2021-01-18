RSpec.describe AbstractDataType::Stack::StackWithArray do
  subject(:stack) { AbstractDataType::Stack::StackWithArray.new }

  it 'empty' do
    expect(stack.empty?).to be true
  end

  it 'push element' do
    stack.push(1)
    stack.push(2)
    stack.push(3)
    stack.push(4)
    stack.push(5)

    expect(stack.to_a).to eq([1, 2, 3, 4, 5])
    expect(stack.size).to eq(5)
  end

  it 'pop element' do
    stack.push(1)
    stack.push(2)
    stack.push(3)
    stack.push(4)
    stack.push(5)

    pop_value = stack.pop

    expect(stack.to_a).to eq([1, 2, 3, 4])
    expect(pop_value).to eq(5)
    expect(stack.size).to eq(4)
  end

  it 'pop all till empty' do
    stack.push(1)
    stack.push(2)
    stack.push(3)

    stack.pop
    stack.pop
    stack.pop

    expect(stack.to_a).to eq([])
    expect(stack.size).to eq(0)
  end

  it 'underflow stack' do
    stack.push(1)
    stack.push(2)
    stack.push(3)

    stack.pop
    stack.pop
    stack.pop

    expect { stack.pop }.to raise_error(NoMemoryError)
  end
end
