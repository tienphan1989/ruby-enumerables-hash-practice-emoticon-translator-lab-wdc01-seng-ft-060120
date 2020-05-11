require 'yaml'
require 'pry'

def load_library(path)
  library = YAML.load_file(lib)
  library_hash = {"get_emoticon" => {}, "get_meaning" => {}}
  #binding.pry
  library.each do |key, values|
    library_hash["get_meaning"][values[1]] = key
    library_hash["get_emoticon"][values[0]] = values[1]
  end
  #binding.pry
  library_hash
end

def get_japanese_emoticon(path, emoticon)
  emoticon_hash = load_library(path)
  result = emoticon_hash["get_emoticon"][emoticon]
  if result == nil
    result = "Sorry, that emoticon was not found" 
  end
  result
end

def get_english_meaning(path, emoticon)
  emoticon_hash = load_library(path)
  result = emoticon_hash["get_meaning"][emoticon]
  if result == nil
    result = "Sorry, that emoticon was not found" 
  end
  result
end