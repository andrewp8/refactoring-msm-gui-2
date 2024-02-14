# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
  # =begin
  # - belongs_to is used to define a one-to-one or many-to-one relationship where one instance belongs to another model.
  
  #   belongs_to(:method_name_that_we_want, {:class_name => 'associate_with_the_modal_we_want', :foreign_key =>""})
  #     def movie
  #       key = self.movie_id

  #       matching_set = Movie.where({ :id => key })

  #       the_one = matching_set.at(0)

  #       return the_one
  #     end
  
  #   - In Ruby version 3, we must use keyword arguments like so (dropping the curly braces and removing the hash rockets)
  #     ```belongs_to(:movie, class_name: "Movie", foreign_key: 'movie_id')```
  #   - NAMING in Rails IS MATTER. Follow naming convention to avoid unnecessarily errors
  #   - In this case, dropping 'class_name: "Movie", foreign_key: 'movie_id'' and the app still work becuase behind the scene, 
  #     - it will looking for the table/modal has the same name with the defined method (:movie), and call that table/modal to sastisfy the 'class_name:'
  #     - for foreign_key:, it will use the name of the method and add '_id' to sastisfy the the hash value. Unless we know before hand that foreign_key will have a different name than the method than we have to specify it, 'foreign_key: 'specificed_foreign_key''.
  #     =end
  belongs_to(:movie)
  belongs_to(:actor)
  # def actor
  #   key = self.actor_id

  #   matching_set = Actor.where({ :id => key })

  #   the_one = matching_set.at(0)

  #   return the_one
  # end
end
