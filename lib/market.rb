class Market
  attr_reader :name,
              :vendors
  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor)
    vendors << vendor
  end

  def vendor_names
    @vendors.map { |vendor| vendor.name}
  end

  def vendors_that_sell(item)
    @vendors.select { |vendor| vendor.inventory.keys?(item)}
  end
  
end


# def vendor_names
#    all the vendors mapped to do vendor by vendor name gives all the names
#   @vendors.map { |vendor| vendor.name}
# end
#
#
# def vendors_that_sell(item)
#  @ all the vendors select the ones that do by vendor
#  go through vendor inventory to find the item
#   vendor_names << item
# end
