# Exercise 1

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
          
sis_bro = family.select { |k, v| k == :sisters || k == :brothers }

immediate_family_members = sis_bro.values.flatten

p immediate_family_members