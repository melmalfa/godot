# For each section write a method that takes the `smoothie_ingredients` variable as *input*
# and returns a **string** as *output*.

# The string should be the list of characters from all the names from the `smoothe_ingredients` shuffled up and with spaces removed. (We don't want any air bubbles in our smoothies!)

# Example:

# ```
# ingredients = [ "apples", "bananas", "pears" ]
# blend(ingredients)
# #=> "esabasnpapraeplans"

smoothie_ingredients = [
  'flax seeds',
  'chia seeds',
  'coconut flakes',
  'spirulina',
  'pumpkin seeds',
  'oatmeal',
  'coco powder',
  'peanut butter',
  'almonds',
  'walnuts',
  'spinach',
  'greek yogurt',
  'nutrional yeast',
  'brussel sprouts',
  'asparagus',
  'kale',
  'brocoli rabe',
  'blue berries',
  'chopped banana',
  'straw berries',
  'mango',
  'hemp milk'
]

mixed_ingredients = []

smoothie_ingredients.each do |ingredient|
  # string => new string => new array => new array => new string
  mixed_up = ingredient.delete(" ").split('').shuffle.join
  mixed_ingredients.push(mixed_up)
end

blended_smoothie = mixed_ingredients.join
#turn it into a string

#also can make a method- phil will send out info
# def blend(ingredients)
#   # this array lives and dies inside this method
#   mixed_ingredients = []

#   ingredients.each do |ingredient|
#       # each ingredient will be referred to in the block as "ingredient"
#      # string => new string => new array => new array => new string
#     mixed_up_string = ingredient.delete(" ").split("").shuffle.join
#     mixed_ingredients.push(mixed_up_string)
#   end

#   mixed_ingredients.join # turn it into a string and returned.
# end

# blended_smoothie = blend(smoothie_ingredients) # this returns the mixed_ingredients.join

# $stdout.puts(blended_smoothie)

$stdout.puts(blended_smoothie)

smoothie_ingredients = {
  'flax seeds'      => '1 tbsp',
  'chia seeds'      => '1 tbsp',
  'coconut flakes'  => '1 tbsp',
  'spirulina'       => '1 tsp',
  'pumpkin seeds'   => '1 tbsp',
  'oatmeal'         => '0.25 cup',
  'coco powder'     => '1 tbsp',
  'peanut butter'   => '1 tbsp',
  'almonds'         => '0.25 cup',
  'walnuts'         => '0.25 cup',
  'spinach'         => '0.25 cup',
  'greek yogurt'    => '0.25 cup',
  'nutrional yeast' => '1 tbsp',
  'brussel sprouts' => '0.25 cup',
  'asparagus'       => '0.25 cup',
  'kale'            => '0.25 cup',
  'brocoli rabe'    => '0.25 cup',
  'blue berries'    => '0.25 cup',
  'chopped banana'  => '0.5 cup',
  'straw berries'   => '0.25 cup',
  'mango'           => '0.25 cup',
  'hemp milk'       => '1 cup'
}

mixed_ingredients = []

smoothie_ingredients.keys.each do |ingredient|
  mixed_up = ingredient.delete(" ").split('').shuffle.join
  mixed_ingredients.push(mixed_up)
end

blended_smoothie = mixed_ingredients.join

$stdout.puts(blended_smoothie)
