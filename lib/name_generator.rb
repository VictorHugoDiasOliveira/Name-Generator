require 'json'

module NameGenerator
  @data_cache = {}

  class << self
    def load_data()
      data_file = File.expand_path("data/names.json", __dir__)
      @data_cache = JSON.parse(File.read(data_file))
    end

    def generate_first_name(gender = :male, country = 'BR')
      data = load_data()
      gender_prefix = case gender
                      when :male then 'MALE'
                      when :female then 'FEMALE'
                      else raise ArgumentError, "Gender must be :male or :female"
                      end
      key = "#{country.upcase}_#{gender_prefix}_FIRST_NAMES"
      names_array = data[key]
      names_array.sample
    end

    def generate_last_name(country = 'BR')
      data = load_data()
      key = "#{country.upcase}_LAST_NAMES"
      last_names_array = data[key]
      last_names_array.sample
    end

    def generate_full_name(gender = :male, country = 'BR')
      first_name = generate_first_name(gender, country)
      last_name = generate_last_name(country)
      "#{first_name} #{last_name}"
    end
  end
end