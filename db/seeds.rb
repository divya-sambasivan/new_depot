# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
for i in (1..3) do
  Product.create(title: ("Harry Potter Book " + i.to_s),
                  description:
                  %{
                      This one is even better than the previous one
                  },
                  image_url: 'hp'+i.to_s+'.jpg',
                  price: 3.3 + i)
end
