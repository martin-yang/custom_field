module CustomField
  class Ladder
    attr_accessor :name
    attr_accessor :items

    def initialize(name)
      self.name = name
      self.items = []
    end

    def item(name)
      self.items << CustomField::Item.new(name,self)
      self
    end

    def self.build(name="")
      self.new name
    end
  end
end
