require 'pry'

require_relative './taylors'
require_relative '.boneyard/exes'

def sing(lyric)
  "♬"+lyric+"♬"
end

# this is not the same thng, ha?
# def sing(lyric)
#   "♬#{lyric}♬"
# end

def mmm_mmm(lyric)
  lyric + ", mmmm-mmmm"
end
#tested

def back_up(lyric, number_of_words)
  lyric + " ("+ lyric.split.drop[number_of_words]+")"
end
#not done yet
# phil wrote: backup_sings = lyric.split(' ").last(number_of_words).join(" ")
# #{lyric}


# mel ask how to insert () as parts of a string

def repeat_lyric(lyric)
  lyric + ", " + (lyric.split[4]+ ", ")*4 +(lyric.split[4]+".")
end
#tested

def double_lyric(lyric)
  lyric+", "+lyric +"."
end


def stutter(lyric)
  lyric.split[0] + ", " + lyric.split[0] + lyric
end

$stdout.puts(TAYLORS[0][:head])

exit unless sing("I stay out too late") == "♬I stay out too late♬"
exit unless sing("Got nothing in my brain").include?("♬Got nothing in my brain♬")
exit unless mmm_mmm("That's what people say") == ("That's what people say, mmm-mmm")

$stdout.puts(TAYLORS[0][:face])

exit unless back_up("I'm dancing on my own", 4) == "I'm dancing on my own (dancing on my own)"
exit unless back_up("I make the moves up as I go", 5).include?("(moves up as I go)")
exit unless mmm_mmm("And that's what they don't see") == "And that's what they don't see, mmm-mmm"
exit unless mmm_mmm("That's what they don't see").include?(", mmm-mmm")

$stdout.puts(TAYLORS[0][:mouth])

exit unless repeat("'Cause the players gonna play") == ("'Cause the players gonna play, play, play, play, play")
exit unless repeat("And the haters gonna hate").include?("hate, hate, hate, hate, hate")
exit unless repeat("Baby, I'm just gonna shake").include?("shake, shake, shake, shake, shake")
exit unless double("I shake it off") == "I shake it off, I shake it off"

# Puts Taylor's neck
$stdout.puts(TAYLORS[0][:neck])

exit unless repeat("Baby, I'm just gonna shake").include?("shake, shake, shake, shake, shake")
exit unless repeat("Heart-breakers gonna break").include?("break, break, break, break, break")
exit unless repeat("And the fakers gonna fake").include?("fake, fake, fake, fake, fake")
exit unless double("I shake it off") == "I shake it off, I shake it off"

# Puts Taylor's shoulders
$stdout.puts(TAYLORS[0][:shoulders)

exit unless stutter("I shake it off, I shake it off") == ("I, I, I shake it off, I shake it off")
