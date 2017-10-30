class AddYearAndTitleToMovies < ActiveRecord::Migration[5.1]
  def change
    add_column :movies, :year, :integer
    add_column :movies, :title, :string 
  end
end
