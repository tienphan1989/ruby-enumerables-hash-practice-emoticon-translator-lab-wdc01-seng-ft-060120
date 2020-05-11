require 'yaml'
require 'pry'

def load_library(file_path)
  library = {
    :meaning => {:english => {}, 
                :japanese => {}                          
      }
            }
                binary.pry
   YAML.load_file(file_path).each do |meaning, array|
    english, japanese = array
    library["meaning"][:english] = array[0]
    library["meaning"][:japanese] = array[1]

  end
  library
end


def get_japanese_emoticon(path, emoticon)
 library = load_library(path)
  result = library["get_emoticon"][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(path, emoticon)
 library = load_library(path)
  result = library["get_meaning"][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end