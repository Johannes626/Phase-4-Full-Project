class CreateSavedMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :saved_movies do |t|
      t.boolean :favorite
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
