module CustomField
  class Item
    attr_accessor :name
    attr_accessor :ladder

    def initialize(name,ladder=nil)
      self.name = name
      self.ladder = nil
    end
  end
end
