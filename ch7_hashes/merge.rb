# Both .merge and .merge! are hash methods that combine two hashes.
# The difference is that after the method has been used, if the original 
# hash is referenced, it may return the hash as it was before the
# method, or it may be permanently ("destructively") changed, or mutated.
# .merge does not mutate the original hash (store the new hash in it's own
# variable). .merge! does mutate the original.

high_scores = {Kathy: 530, Jaydon: 440, Zach: 1010}
new_scores = {Josh: 560, Kristen: 890}

puts high_scores.merge(new_scores)

puts high_scores # unchanged

puts high_scores.merge!(new_scores)

puts high_scores # changed

# The merge methods can optionally take a block that tells what to do if some of the keys
# are the same. hash.merge(other_hash){|key,oldval,newval|block} => new_hash. 
# If no block is given, the values from other_hash are used.

more_scores = {Jaydon: 530, Josh: 670, Juliana: 320}

puts high_scores.merge!(more_scores)