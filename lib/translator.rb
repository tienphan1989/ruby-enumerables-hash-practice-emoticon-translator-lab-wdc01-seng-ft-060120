require 'yaml'
require 'pry'

def load_library(path)
  emoticon_library = YAML.load_file(path)
  sorted_emoticons = {
    'get_meaning': {},
    'get_emoticon': {}
  }
  binding.pry
end


def get_japanese_emoticon(path, emoticon)

end

def get_english_meaning(path, emoticon)

end