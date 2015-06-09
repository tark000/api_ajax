class Post < ActiveRecord::Base


  def self.posts(lower_bound_id, upper_bound_id)
    Post.where("id > ? AND id < ?", lower_bound_id.to_i, upper_bound_id.to_i)
  end
end
