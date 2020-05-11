require 'yaml'
require 'pry'

def load_library(path)
  emoticons = YAML.load_file(path)
  emoticon_hash = Hash.new

  emoticon_hash["get_emoticon"] = Hash.new
  emoticon_hash["get_meaning"] = Hash.new

  emoticons.each do |english_word, emoticon_set|
    emoticon_hash["get_emoticon"][emoticon_set.first] = emoticon_set.last
    emoticon_hash["get_meaning"][emoticon_set.last] = english_word
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