require 'yaml'
require 'pry'

def load_library(file_path)
def load_library(file_path)
  library = {"get_meaning" => {}, "get_emoticon" => {} }
  YAML.load_file(file_path).each do |meaning, array|
    english, japanese = array
    library["get_emoticon"][english] = japanese
    library["get_meaning"][japanese] = meaning
  end
  library
end


def get_japanese_emoticon(path, emoticon)

end

def get_english_meaning(path, emoticon)

end