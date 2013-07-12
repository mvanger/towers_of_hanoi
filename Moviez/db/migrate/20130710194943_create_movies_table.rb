class CreateMoviesTable < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.text :plot
      t.string :mpaa_rating
      t.decimal :rating, default: 5, minimum: 0, maximum: 10
      t.integer :length
      t.text :poster
    end
  end
end
