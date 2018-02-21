class AddReferenceToReviews < ActiveRecord::Migration[5.1]
  def change
    add_reference :reviews, :restaurant
  end
end
