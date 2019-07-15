class ProfilesController < BotController

  def ask_for_id
    send_replies
    update_session_to state: 'get_id'
  end

  def get_id
    current_user.update!(student_id: message)
    send_replies
  end
end
