class ProfilesController < BotController

  def ask_for_id
    send_replies
    update_session_to state: 'get_id'
  end

  def get_id
    User.create_with(student_id: message).find_or_initialize_by(uid: current_user_id)
    send_replies
  end
end
