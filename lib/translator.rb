# require modules here
require 'yaml'
require 'pry'

def load_library(filepath)
  # code goes here
  emoticons = YAML.load_file(filepath)
  library = { "get_meaning" => {}, "get_emoticon" => {} }

  emoticons.each do |word, translations|
    library["get_meaning"][translations[1]] = word
    library["get_emoticon"][translations[0]] = translations[1]
  end

  library
end

def get_japanese_emoticon(filepath, emoticon)
  # code goes here
  library = load_library(filepath)

  if library["get_emoticon"][emoticon]
    library["get_emoticon"][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(filepath, emoticon)
  # code goes here
  library = load_library(filepath)

  if library["get_meaning"][emoticon]
    library["get_meaning"][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end
