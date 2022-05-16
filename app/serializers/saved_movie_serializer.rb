class SavedMovieSerializer < ActiveModel::Serializer
  attributes :favorite, :movie_id, :user_id, :id
  # has_one :user
  # has_one :movie
end
