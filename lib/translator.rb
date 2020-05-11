require 'yaml'
require 'pry'

def load_library(path)
    emoticon_library = YAML.load_file(path) # emoticon_library = result in the tests
  sorted_emoticons = {
    'get_meaning': {:english => "", :Japanese => ""}

  }
  #sorted_emoticons[:get_meaning] = {:english => "", :Japanese => ""}
  emoticon_library.each do |key, value|
  sorted_emoticons[:get_meaning] = key
  
binding.pry
  end
  sorted_emoticons
end


def get_japanese_emoticon(path, emoticon)

end

def get_english_meaning(path, emoticon)

end