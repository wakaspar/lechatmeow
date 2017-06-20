module CatsHelper

  def other_users
    User.all - [current_user]
  end

  def chatrooms
    @chatrooms = Chatroom.all
  end

end
