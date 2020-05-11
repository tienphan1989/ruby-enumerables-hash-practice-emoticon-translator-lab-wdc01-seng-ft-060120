require 'yaml'
require 'pry'

def load_library(path)
    emoticon_library = YAML.load_file(path)
  sorted_emoticons = {
    'get_meaning' => {'english' => {},
                    'japanese' => {}
                    }
  }
  emoticon_library.each do |key, value|
  sorted_emoticons['get_meaning'] = key
['get_meaning']['english'] = value[0]
  #sorted_emoticons['get_meaning']['japanese'] = value[1]
binding.pry
  end
  sorted_emoticons
end


def get_japanese_emoticon(path, emoticon)

end

def get_english_meaning(path, emoticon)

end