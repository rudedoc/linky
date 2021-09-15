class CreateJoinTablePostsTrails < ActiveRecord::Migration[6.1]
  def change
    create_join_table :posts, :trails do |t|
      t.index [:post_id, :trail_id]
      t.index [:trail_id, :post_id]
    end
  end
end
