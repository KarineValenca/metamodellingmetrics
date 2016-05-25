# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Operator.create(name:'Adição')
Operator.create(name:'Subtração')
Operator.create(name:'Multiplicação')
Operator.create(name:'Divisão')

NumberSet.create(name_number_set: 'Naturais')
NumberSet.create(name_number_set: 'Inteiros')
NumberSet.create(name_number_set: 'Racionais')
NumberSet.create(name_number_set: 'Reais')

TypeOfScale.create(name_type_scale: 'Absoluta')
TypeOfScale.create(name_type_scale: 'Nominal')
TypeOfScale.create(name_type_scale: 'Ordinal')
TypeOfScale.create(name_type_scale: 'Intevalo')
TypeOfScale.create(name_type_scale: 'Racional')