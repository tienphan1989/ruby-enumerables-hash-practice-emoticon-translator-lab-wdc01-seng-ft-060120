require 'yaml'
require 'pry'

def load_library(path)
  emoticon_hash = Hash.new

   emoticon_hash[:response] = {:english=> {}, :japanese=> {}}

   library = YAML.load_file(path)
   library.each do |key, value|
   emoticon_hash[response] = key
   response[:english] = value[0]
   response[:japanese] = value[1]
   
  end
emoticon_hash 
end

def get_japanese_emoticon(path, emoticon)
  emoticons = load_library(path)
  emoticons["get_emoticon"].each do |english_emoticon, japanese_emoticon|
    if emoticon == english_emoticon
      return japanese_emoticon
    end
  end
  return "Sorry, that emoticon was not found"
end

def get_english_meaning(path, emoticon)
  emoticons = load_library(path)
  emoticons["get_meaning"].each do |japanese_emoticon, english_meaning|
    if emoticon == japanese_emoticon
      return english_meaning
    end
  end
  return "Sorry, that emoticon was not found"
end