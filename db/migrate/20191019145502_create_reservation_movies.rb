class CreateReservationMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :reservation_movies do |t|
      t.references :movie, null: false, foreign_key: true
      t.integer :identification
      t.string :name
      t.string :email
      t.date :day_reservation

      t.timestamps
    end
  end
end
