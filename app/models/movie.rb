# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord
  validates(:director_id, presence: true)
  validates(:title, uniqueness: true)
  # - has_many is used to define a one-to-many relationship where one instance can be associated with multiple instances of another model
  # def characters
  #   my_id = self.id
    
  #   matching_chacracters = Character.where({ :movie_id => my_id })
    
  #   return matching_characters
  # end

  # ```has_many(:characters, class_name: "Character", foreign_key: "character_id")```
  # - if we know the  class_name and foreign_key will be matching with the method name, we can use the shortcut way
  # """
  has_many(:characters)
  belongs_to(:director, foreign_key: "director_id")
  # def director
  #   key = self.director_id

  #   matching_set = Director.where({ :id => key })

  #   the_one = matching_set.at(0)

  #   return the_one
  # end
end
