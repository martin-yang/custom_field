module CustomField
  class Ladder
    attr_accessor :name

    def initialize(name)
      self.name=name
    end

    def self.build(name="")
      self.new(name)
    end
  end
end
