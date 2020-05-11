require 'yaml'
require 'pry'

def load_library(file_path)
  library = {
    "meaning" => {"english" => {}, 
                "japanese" => {}                          
            }
  }
   YAML.load_file(file_path).each do |meaning, array|
    english, japanese = array
    library["meaning"][:english] = array[0]
    library["meaning"][:japanese] = array[1]
    
  end
  library
end


def get_japanese_emoticon(path, emoticon)

end

def get_english_meaning(path, emoticon)

end