class HellosController < BotController

  def say_intro
    send_replies
    step_to flow: 'profile', state: 'ask_for_id'
  end
end
