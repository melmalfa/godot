class PingPong::Game
@@state = nil

@@difficulty = :medium

def self.state
  return @@state
end

def self.difficulty
  return @@difficulty
end

def self.difficulty=(x)
   @@difficulty=x
  end

def player_has_served?
  if @@state != nil
   return true
 end
end

def computer_has_hit?
  if @@state == :ping || @@state == :pong
    return true
  end
end

def is_ping?
  if @@state == :ping
    return true
  end
end

def is_pong?
  if @@state == :pong
    return true
  end
end

def serve!
  return true
  @@state == :served
end

def miss?
  if @@difficulty == :easy
    # 50% chance of missing
    return true (50.percent)

  else @@difficulty == :medium
    # 33% chance of missing

  elsif @@difficulty == :hard
    #25% chance of missing
  end
end



end
