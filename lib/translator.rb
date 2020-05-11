require 'yaml'
require 'pry'

def load_library(file_path)
  library = {
    :english => {:english2 => {}, 
                :japanese => {}                          
            }
  }
   YAML.load_file(file_path).each do |meaning, array|
    english, japanese = array
    library[:english][:english2] = array[0]
    library[:english][:japanese] = array[1]
    
  end
  library
end


def get_japanese_emoticon(path, emoticon)

end

def get_english_meaning(path, emoticon)

end