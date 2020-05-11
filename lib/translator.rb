require 'yaml'
require 'pry'

def load_library(path)
  emoticon_library = YAML.load_file(file_path)
  sorted_emoticons = {
    'get_meaning': {},
    'get_emoticon': {}
  }
  binding.pry
  emoticon_library.each do |key, value|
    sorted_emoticons[:get_meaning][value[1]] = key 
    sorted_emoticons[:get_emoticon][value[0]] = value[1] 
  binding.pry
  end
  sorted_emoticons
  binding.pry
end


def get_japanese_emoticon(path, emoticon)

end

def get_english_meaning(path, emoticon)

end