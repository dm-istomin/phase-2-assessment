def generate_alias
  adjectives = %w{ amusing angry athletic attractive beautiful boring brave careful careless charming clever confident crafty crazy creative cruel cute dangerous dependable easygoing energetic exciting famous forgetful friendly good-looking graceful happy helpful horrible humble humorous inconsiderate interesting likable lucky middle class old outgoing overweight poor popular practical responsible rich romantic sad selfish skinny stingy successful talkative thin touchy ugly unlucky wealthy young }
  nouns = %w{ alligator ant bear bee bird camel cat cheetah chicken chimpanzee cow crocodile deer dog dolphin duck eagle elephant fish fly fox frog giraffe goat goldfish hamster hippopotamus horse kangaroo kitten lion lobster monkey octopus owl panda pig puppy rabbit rat scorpion seal shark sheep snail snake spider squirrel tiger turtle wolf zebra }
  "#{adjectives.sample.capitalize} #{nouns.sample.capitalize}"
end

def set_alias(user)
  user.alias = generate_alias
  user.save
end

def unset_alias(user)
  user.alias = nil
  user.save
end
