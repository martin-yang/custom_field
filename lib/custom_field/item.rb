module CustomField
  class Item
    attr_accessor :name
    attr_accessor :ladder
    attr_accessor :templates

    def initialize(name,ladder=nil)
      self.name = name
      self.ladder = ladder
      self.templates = []
    end

    def template(name,path)
      self.templates << CustomField::Template.new(name,path)
      self
    end
  end
end
