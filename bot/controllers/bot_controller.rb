class BotController < Stealth::Controller

  helper :all

  def route
    current_user
    if current_session.present?
      step_to session: current_session
    else
      step_to flow: 'hello', state: 'say_intro'
    end
  end

  def message
    @message ||= current_message.message
  end

  def current_user
    @user ||= User.find_or_create_by(uid: current_user_id)
  end

end
