module ShotsHelper

  def currentUserLikes(shot)
    if Like.find_by_user_id_and_shot_id(current_user.id, shot.id)
      return true 
    else
      return false
    end
  end

end
