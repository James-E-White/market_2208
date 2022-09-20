require './lib/item'
require './lib/vendor'

RSpec.describe Vendor do
  before (:each) do
   @vendor = Vendor.new("Rocky Mountain Fresh")
   @item1 = Item.new({name: 'Peach', price: "$0.75"})
  end

  it 'exists' do
    expect(@vendor).to be_an_instance_of(Vendor)
  end

  it 'has a name' do
    expect(@vendor.name).to eq("Rocky Mountain Fresh")
  end

  it 'starts with no inventory' do
    expect(@vendor.inventory).to eq({})
  end

  it 'can check stock' do
    expect(@vendor.check_stock(@item1)).to eq(0)
  end

  it 'can stock items' do
    @vendor.stock(@item1, 30)
    expect(@vendor.inventory).to eq({@item1 => 30})
    expect(@vendor.check_stock(@item1)).to eq(30)
    @vendor.stock(@item1, 25)
    expect(@vendor.check_stock(@item1)).to eq(55)
    @vendor.stock(@item2, 12)
    expect(@vendor.inventory).to eq({@item1 => 55, @item2 => 12})
    
  end

end
