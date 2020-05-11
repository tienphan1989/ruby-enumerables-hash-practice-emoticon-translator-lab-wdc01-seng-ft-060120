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

end

def get_english_meaning(path, emoticon)

end