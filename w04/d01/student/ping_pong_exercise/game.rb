module PingPong
  class Game

    @@state = nil
    @@difficulty = :medium

    def self.state
      return @@state
    end

    def self.difficulty
      return @@difficulty
    end

    def self.difficulty=(difficulty_level)
       @@difficulty=(difficulty_level)
      end

    def self.player_has_served?
      if @@state != nil
       return true
     end
    end

    def self.computer_has_hit?
      if @@state == :ping || @@state == :pong
        return true
      end
    end

    def self.is_ping?
      if @@state == :ping
        return true
      end
    end

    def self.is_pong?
      if @@state == :pong
        return true
      end
    end

    def self.serve!
      @@state == :served
      return true
    end

    def self.miss?
      chance = case difficulty
      when :easy   then 0.5
      when :medium then 0.33
      when :hard   then 0.25
      end

      rand < chance
    end

    def self.hit!


  end
end
