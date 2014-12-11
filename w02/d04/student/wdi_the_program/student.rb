class Student < Human

  def initialize
    @homeworks = []
  end

  attr_reader :homeworks

  def do_homework (singl_arg)
    @homeworks.push('singl_arg)
  end

end


