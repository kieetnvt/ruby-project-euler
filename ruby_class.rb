class Father
  def self.class_method_father
    p "class_method_father"
  end

  def intance_method_father
    p "intance_method_father"
    private_method_father
    protected_method_father
  end

  private
    def private_method_father
      p "private_method_father"
    end

  protected
    def protected_method_father
      p "protected_method_father"
    end
end

class Son < Father
end

son = Son.new
son.intance_method_father
