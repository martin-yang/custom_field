# CustomField

Use ruby Custom build form fields

# Ruby Version

Ruby 2.0.0

## Installation

Add this line to your application's Gemfile:

    gem 'custom_field'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install custom_field

## Usage
Created a new file test.rb:

```bash
CustomField::Ladder.build "root ladder" do |ladder|
  ladder.item "first item" do |item|
    item.template "one template","build a template path" do |template|
      # template.field name,type
      template.field "name","text"
      template.field "sex","radio",assoc: ["Male","Female"]
      template.field "favorite","checkbox",assoc: ["football","basketball"]
      template.field "intro","textarea"
    end

    item.template "two template","build a template path" do |template|
      template.field "name","text"
      template.field "sex","radio",assoc: ["Male","Female"]
      template.field "favorite","checkbox",assoc: ["football","basketball"]
      template.field "intro","textarea"
    end
  end

  ladder.item "twice item" do |item|
    ...
  end
end
```

Get all ladders:

    CustomField::Ladder.all

Get a ladder by name:

    ladder=CustomField::Ladder.by("root ladder")

Get all items:

    ladder.items

Get a item by name:

    item=ladder.items.by_item("first item")

Get all templates:

    item.templates

Get a template by name:

    template=item.templates.by_name("one template")

Get all fields:


    template.fields

Get a field by name:

    field=template.fields.by_name("name") #<input type="text" name="name"/>

Field convert to html in Rails

    field.html_safe

## Contributing

1. Fork it ( https://github.com/[my-github-username]/custom_field/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
