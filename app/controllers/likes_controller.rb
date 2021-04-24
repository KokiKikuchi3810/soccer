class LikesController < ApplicationController


    def create
        like = current_user.likes.create(forum_id: params[:forum_id]) #user_idとtweet_idの二つを代入

        forum = Forum.find(params[:forum_id])
        user = User.find(forum.user_id)
        current_likes_count = user.likes_count
        update_likes_count = current_likes_count+1
        user.update(likes_count: update_likes_count)


        redirect_back(fallback_location: root_path)
    end
    
    def destroy
        like = Like.find_by(forum_id: params[:forum_id], user_id: current_user.id)
        like.destroy
        redirect_back(fallback_location: root_path)
    end

    
end
