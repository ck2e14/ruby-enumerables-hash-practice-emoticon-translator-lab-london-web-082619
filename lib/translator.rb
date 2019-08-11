require "yaml"

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  new_emote_hash = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
  emoticons.each do |key, value|
    new_emote_hash["get_meaning"][value[1]] = key
    new_emote_hash["get_emoticon"][value[0]] = emoticons[key][1]
  end
  new_emote_hash
end


def get_japanese_emoticon(file_path, emoticon)
  load_library(file_path)

