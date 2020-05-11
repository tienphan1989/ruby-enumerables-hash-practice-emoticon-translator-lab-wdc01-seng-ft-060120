require 'yaml'
require 'pry'

def load_library(path)
  hashed = {"get_meaning" => {}}
  YAML.load_file(path).each do |meaning, emoticons|
    english, japanese = emoticons
    hashed["get_meaning"] = meaning
    hashed["get_meaning"] = {:english => 
    hashed["get_emoticon"][english] = japanese
    #hashed["get_meaning"][japanese] = meaning
  end
  hashed
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