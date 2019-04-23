# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
  {title: 'Coisa',   amount: 2.34,   entry_date: '2019-01-01 23:23:12'},
  {title: 'Trem',    amount: 12.34,  entry_date: '2019-02-01 23:23:12'},
  {title: 'Treco',   amount: 3.24,   entry_date: '2019-03-23 23:23:12'},
  {title: 'Troço',   amount: 34.4,   entry_date: '2018-12-01 13:23:12'},
  {title: 'Bagulho', amount: 290.34, entry_date: '2018-12-11 23:43:12'},
  {title: 'Bodega',  amount: 11.43,  entry_date: '2019-04-01 23:23:12'},
  {title: 'Coiso',   amount: 298.34, entry_date: '2019-05-01 23:23:12'}
].each do |entry|
  Entry.find_or_create_by!(entry)
end
