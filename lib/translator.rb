require 'yaml'
require 'pry'

def load_library(path)
  emoticon_library = YAML.load_file(file_path)
  sorted_emoticons = {
    'get_meaning': {},
    'get_emoticon': {}
  }
  emoticon_library.each do |key, value|
    sorted_emoticons[:get_meaning][value[1]] = key #Japanese emoticon is the key; name/meaning is the value
    sorted_emoticons[:get_emoticon][value[0]] = value[1] #English emoticon is the key; Japanese emoticon is the value
  binding.pry
  end
  sorted_emoticons
end


def get_japanese_emoticon(path, emoticon)

end

def get_english_meaning(path, emoticon)

end