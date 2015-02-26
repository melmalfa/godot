class Word

  def initialize(original_word)
    @original_word = original_word
  end

  def piglatinize
    ary = @original_word.split(//)
    if
      # begins with a vowel
      ary[0] == "a" || "o" || "u" || "i" || "e"
      return @original_word + "way"
    elsif
    # second letter is a vowel (first letter is consanant)
      ary[1] == "a" || "o" || "u" || "i" || "e"
      f_cons = ary[0]
      ary.shift
      return ary.join + f_cons + "ay"
    elsif
    # third letter is a vowel(first two letters are consanants)
      ary[2] == "a" || "o" || "u" || "i" || "e"
      f_cons = ary[0]
      sec_cons = ary[1]
      ary.shift
      ary.shift
      return ary.join + f_cons + sec_cons + "ay"
    else
      # fourth letter is a vowel(first three letters are consanants)
      ary[3] == "a" || "o" || "u" || "i" || "e"
      f_cons = ary[0]
      sec_cons = ary[1]
      thr_cons = ary[2]
      ary.shift
      ary.shift
      ary.shift
      return ary.join + f_cons + sec_cons + thr_cons + "ay"
     end
  end

end
