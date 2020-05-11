require 'yaml'
require 'pry'

def load_library(file_path)
   output = Hash.new
   library = YAML.load_file(yaml_file)
   library.each do |key, value|
      
    output[key] = {}
    output[key][:english] = value[0]
    output[key][:japanese] = value[1]
  end
output
end


def get_japanese_emoticon(path, emoticon)

end

def get_english_meaning(path, emoticon)

end