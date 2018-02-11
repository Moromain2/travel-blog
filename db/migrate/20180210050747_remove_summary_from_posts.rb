class RemoveSummaryFromPosts < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :summary, :text_area
  end
end
