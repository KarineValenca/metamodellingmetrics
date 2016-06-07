# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Operator.create(name:'None')
Operator.create(name:'Addition')
Operator.create(name:'Subtraction')
Operator.create(name:'Multiplication')
Operator.create(name:'Division')

NumberSet.create(name_number_set: 'Whole')
NumberSet.create(name_number_set: 'Integers')
NumberSet.create(name_number_set: 'Rational')
NumberSet.create(name_number_set: 'Real')

TypeOfScale.create(name_type_scale: 'Absolute')
TypeOfScale.create(name_type_scale: 'Nominal')
TypeOfScale.create(name_type_scale: 'Ordinal')
TypeOfScale.create(name_type_scale: 'Inteval')
TypeOfScale.create(name_type_scale: 'Ratio')
