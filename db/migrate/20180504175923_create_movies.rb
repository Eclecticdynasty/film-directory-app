class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.intger :director_id
      t.integer :genre_id
      t.integer :user_id
      t.text :description
      t.boolean :watched, default: false

      t.timestamps
    end
  end
end
