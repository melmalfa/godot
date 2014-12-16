require 'pry'

class ScrabbleWord

  def initialize (letter)
    @letter = letter
    @ltr_scores = {:a => 1, :b => 3,  :c => 3, :d => 2, :e => 1,
  :f => 4, :g => 2,  :h => 4, :i => 1, :j => 8, :k => 5, :l => 1,  :m => 3, :n => 1, :o => 1, :p => 3, :q => 10, :r => 1, :s => 1, :t => 1, :u => 1, :v => 4,  :w => 4, :x => 8, :y => 4, :z => 10}
  end

  def score

    key = @letter.downcase.split(//)
    sum = 0
    # binding.pry
    key.each do |x|
      sum = @ltr_scores[x.to_sym] + sum
    end
    sum
  end

  def multiplier_score(m)

    key = @letter.downcase.split(//)
    sum = 0
    # binding.pry
    key.each do |x|
      sum = @ltr_scores[x.to_sym] + sum
    end
    sum*m
  end

end
