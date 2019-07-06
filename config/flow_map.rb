class FlowMap

  include Stealth::Flow

  flow :hello do
    state :say_intro
  end

  flow :profile do
    state :ask_for_id
    state :get_id
  end

  flow :goodbye do
    state :say_goodbye
  end

  flow :catch_all do
    state :level1
  end

end
