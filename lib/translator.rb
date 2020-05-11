require 'yaml'
require 'pry'

def load_library(path)
  hashed = {"get_meaning" => {}}
  YAML.load_file(path).each do |meaning, emoticons|
    english, japanese = emoticons
    hashed["get_meaning"] = meaning
    hashed["get_meaning"][:english] = {:english => 
    hashed["get_emoticon"][english] = japanese
    #hashed["get_meaning"][japanese] = meaning
  end
  hashed
end
  hashed = {
    'get_meaning': {}
  }
  emoticon_library.each do |key, value|
    hashed[:get_meaning][value[1]] = key #Japanese emoticon is the key; name/meaning is the value
    hashed[:get_emoticon][:english] = value[1]
    hashed[:]
    #English emoticon is the key; Japanese emoticon is the value
  end
  sorted_emoticons

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