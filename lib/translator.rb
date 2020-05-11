require 'yaml'
require 'pry'

def load_library(file_path)
  library = {}
  library = {
    "meaning" => {:english => {}, 
                 :japanese => {}                          
            }
  }
   YAML.load_file(file_path).each do |key, value|
    english, japanese = value
    library["meaning"] = key
    library["meaning"][:english] = value[0]
    library["meaning"][:japanese] = value[1]
  end
  library
end


def get_japanese_emoticon(path, emoticon)

end

def get_english_meaning(path, emoticon)

end