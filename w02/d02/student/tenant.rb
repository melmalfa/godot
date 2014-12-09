class Tenant

attr accessor :f_name, :l_name, :born_on, :gender

  def initialize(f_name, l_name, born_on, gender)
    @f_name = f_name
    @l_name = l_name
    @born_on = born_on
    @gender = gender
  end

  def initialize(nickname, occupation)

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

A **tenant** should have a `full_name` method that returns a string of their first name, last name and nickname (if they have one).

p1 = Tenant.new()
p1.full_name

def full_name go
  "f_name" + " nickname" + " l_name"
end


Example Usage:

```rb
p1 = Tenant.new("Calvin", "Clifford", "male", "December 21, 1929")
p1.nickname = "Bud"
p1.full_name #=> "Calvin 'Bud' Clifford"

