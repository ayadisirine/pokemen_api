# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'pokemon.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
    t = Pokeman.new
    t.name = row['Name']
    t.type1 =row['Type 1']
    t.type2 =row['Type 2']
    t.total =row['Total']
    t.Hp =row['HP']
    t.Attack =row['Attack']
    t.Defense =row['Defense']
    t.Sp_Atk =row['Sp. Atk']
    t.Sp_Def =row['Sp. Def']
    t.Speed =row['Speed']
    t.Generation =row['Generation']
    #t.Legendary =row['Legendary'].to_boolean
    if row['Legendary'].to_s == 'False'
        t.Legendary=false 
    else 
        t.Legendary=true
    end
    t.save
  puts "#{t.name}, #{t.type1}, #{t.type2}, #{t.total}, #{t.Hp}, #{t.Attack}, #{t.Defense}, #{t.Sp_Atk}, #{t.Sp_Def}, #{t.Speed}, #{t.Generation}, #{t.Legendary} saved"
end
puts "There are now #{Pokeman.count} rows in the Pokemen table"
