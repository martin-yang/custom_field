module CustomField
  class Template
    attr_accessor :name
    attr_accessor :path

    def initialize(name,path)
      self.name = name
      self.path = path
    end
  end
end
