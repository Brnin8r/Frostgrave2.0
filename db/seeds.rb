# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

School.create([
  {
    :name => "Chronomancy"
  },
  {
    :name => "Elementalism"
  },
  {
    :name => "Enchanting"
  },
  {
    :name => "Illusion"
  },
  {
    :name => "Necromancy"
  },
  {
    :name => "Sigilism"
  },
  {
    :name => "Soothsaying"
  },
  {
    :name => "Summoning"
  },
  {
    :name => "Thaumaturgy"
  },
  {
    :name => "Witchcraft"
  }
])

chronomancyAligned = [School.find_by_name("Elementalism").id,
                      School.find_by_name("Necromancy").id,
                      School.find_by_name("Soothsaying").id
                     ]

chronomancyAligned.each do |alignment|
  Aligned.create({:school_id => School.find_by_name("Chronomancy").id,
                  :aligned_school_id => alignment
                })
end

Aligned.create([
  {
    :school_id => School.find_by_name("Chronomancy").id,
    :aligned_school_id => [2, 5, 7]
  },
  {
    :school_id => 2,
    :aligned_school_id => [1, 3, 8]
  },
  {
    :school_id => 3,
    :aligned_school_id => [2, 6, 10]
  },
  {
    :school_id => 4,
    :aligned_school_id => [6, 7, 9]
  },
  {
    :school_id => 5,
    :aligned_school_id => [1, 8, 10]
  },
  {
    :school_id => 6,
    :aligned_school_id => [3, 4, 9]
  },
  {
    :school_id => 7,
    :aligned_school_id => [1, 4, 9]
  },
  {
    :school_id => 8,
    :aligned_school_id => [2, 5, 10]
  },
  {
    :school_id => 9,
    :aligned_school_id => [4, 6, 7]
  },
  {
    :school_id => 10,
    :aligned_school_id => [2, 5, 8]
  }
])
