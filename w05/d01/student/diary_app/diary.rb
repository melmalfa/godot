require 'redis'

class Diary

  def initialize
    @redis = Redis.new
    # @persons_secrets = {}
  end
  # could be @persons_secrets = Redis.new

  def tell_secret(person, secret)
    @redis.lpush "diary:#{person}", secret
    # if persons_secrets[person].nil?
    #   @persons_secrets[person] =[]
    # end
    # @persons_secrets[person].push(secret)
  end

  def get_secrets(person)
    @redis.lrange "diary:#{person}", 0, -1
    # @persons_secrets[person]
  end

end
# binding.pry






# {:melodie => ["secret", "secret2", "secret3"]},

# []
