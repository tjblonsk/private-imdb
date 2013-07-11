class CreateMoviesTable < ActiveRecord::Migration
  def up
    create_table :movies do |t|
      t.string :name
      t.string :plot
      t.string :mpaa
      t.integer :rating
      t.boolean :favorite
    end
  end

  def down
    drop_table :movies
  end
end
