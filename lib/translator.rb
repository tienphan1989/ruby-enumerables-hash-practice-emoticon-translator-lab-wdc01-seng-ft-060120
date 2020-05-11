require 'yaml'
require 'pry'

def load_library(path)
  hashed = {"get_meaning" => {}}
  YAML.load_file(path).each do |meaning, emoticons|
    english, japanese = emoticons
    hashed["get_meaning"] = meaning
    hashed["get_meaning"][:english] = value[0] 
    hashed["get_meaning"][:japanese] = value[1]
    bind.pry
  end
  hashed
end


def get_japanese_emoticon(path, emoticon)

end

def get_english_meaning(path, emoticon)

end