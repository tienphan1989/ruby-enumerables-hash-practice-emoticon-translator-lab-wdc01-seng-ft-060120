require 'yaml'
require 'pry'

def load_library(yaml_file)
   output = Hash.new
   response = {:english=> {}, :japanese=> {}}
   library = YAML.load_file(yaml_file)
   library.each do |key, value|
    
   response[:english] = value[0]
   response[:japanese] = value[1]
  output[key] = response
  end
output
end


def get_japanese_emoticon(path, emoticon)

end

def get_english_meaning(path, emoticon)

end