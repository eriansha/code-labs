RSpec.describe AbstractDataType::LinkedLists::SingleLinkedList do
  subject(:linked_list) { AbstractDataType::LinkedLists::SingleLinkedList.new }

  it 'empty' do
    expect(linked_list.empty?).to be true
  end

  it 'traverse to particular position' do
    10.times { |value| linked_list.append(value) }

    current, previous, counter = linked_list.traverse(5)

    expect(current.to_s).to eq 5
    expect(previous.to_s).to eq 4
    expect(counter).to eq 5
  end

  it 'append from the tail' do
    linked_list.append(1)
    linked_list.append(3)
    linked_list.append(2)

    expect(linked_list.to_a).to eq [1, 3, 2]
  end

  it 'insert from particular position' do
    linked_list.append(1)
    linked_list.append(3)
    linked_list.append(2)
    linked_list.insert(40, 2)

    expect(linked_list.to_a).to eq [1, 3, 40, 2]
  end

  it 'insert from first position' do
    linked_list.insert(40, 1)
    linked_list.insert(2, 233)

    expect(linked_list.to_a).to eq [40, 2]
  end

  it 'delete from particular position' do
    linked_list.append(1)
    linked_list.append(3)
    linked_list.append(2)
    linked_list.delete(2)

    expect(linked_list.to_a).to eq [1, 3]
  end
end
