require 'name_generator'

# Generate male first name
puts NameGenerator.generate_first_name(:male, 'br')

# Generate female first name
puts NameGenerator.generate_first_name(:female, 'ru')

# Generate male last name
puts NameGenerator.generate_last_name('br')

# Generate female last name
puts NameGenerator.generate_last_name('ru')

# Generate a male name
puts NameGenerator.generate_full_name(:male, 'br')

# Generate a female name  
puts NameGenerator.generate_full_name(:female, 'ru')