
# Protected and Private can not access from outside of scope of object in specific context.

class Product
  attr_accessor :name, :quantity

  def initialize(name)
    @name = name
    @quantity = 1

    puts "There are #{stock_count} in stock"
    puts "cannot call privated with self"
    puts "sku is protected of #{name} is #{sku}"
    puts "Also can call with self.sku of #{name} is #{self.sku}"
  end

  def increment
    @quantity += 1
  end

  def check_equal(other_product)
    self.sku == other_product.sku
  end

  private

    def stock_count
      100
    end

  protected

    def sku
      name.crypt("yo")
    end
end

class Milk < Product
end

# Private method can called from SCOPE of current object
# Private method can not called from receiver such as: self.private_method_name => Always ERROR
#
# can call Protected methods inside the context of an object of the same type
# can call Protected methods with self.protected_method inside object's scope
#
# LEARN MORE: https://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Classes
