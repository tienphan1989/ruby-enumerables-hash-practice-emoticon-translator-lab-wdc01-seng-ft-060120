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
  jpn_emoticon = load_library(file_path)["get_emoticon"][eng_emoticon]
  jpn_emoticon ? jpn_emoticon : "Sorry, that emoticon was not found"
end

def get_english_meaning(path, emoticon)

end