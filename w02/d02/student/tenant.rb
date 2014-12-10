require_relative '/.apartment'

class Tenant

  def initialize(f_name, l_name, born_on, gender, nickname, occupation)
    @f_name = f_name
    @l_name = l_name
    @born_on = born_on
    @gender = gender
    @nickname = nickname
    @occupation = occupation
  end

  attr_accessor :f_name, :l_name, :born_on, :gender

    def nickname=(a)
      @nickname = a
    end

    def nickname
      @nickname
    end

    def occupation=(a)
      @occupation = a
    end

    def occupation
      @occupation
    end
  end

p1 = Tenant.new("Brian", "Rucker", "male", "March 20, 1992", "Brucker", "student")
p2 = Tenant.new("Melodie", "Malfa", "female", "March 3, 1977", "Mel", "student")
p3 = Tenant.new("Nancy", "Drew", "female", "November 6, 1932", "Slueth". "detective")
p4 = Tenant.new("bell", "hooks", "female", "May 01, 1956", "kick-ass", "cultural critic")

def full_name go
  "f_name" + " nickname" + " l_name"
end
