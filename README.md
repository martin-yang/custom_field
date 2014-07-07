# CustomField

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'custom_field'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install custom_field

## Usage
Created a new file test.rb:
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
    
Get all ladders:
    CustomField::Ladder.all
Get a ladder by name:
    CustomField::Ladder.by("root ladder")
Get all items:
    CustomField::Ladder.by("root ladder").items
Get a item by name:
    CustomField::Ladder.by("root ladder").items.by_item("first item")
Get all templates:
    CustomField::Ladder.by("root ladder").items.by_item("first item").templates
Get a template by name:
    CustomField::Ladder.by("root ladder").items.by_item("first item").templates.by_name("one template")

Get all fields:
    CustomField::Ladder.by("root ladder").items.by_item("first item").templates.by_name("one template").fields
Get a field by name:
    CustomField::Ladder.by("root ladder").items.by_item("first item").templates.by_name("one template").fields.by_name("sex")

## Contributing

1. Fork it ( https://github.com/[my-github-username]/custom_field/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
