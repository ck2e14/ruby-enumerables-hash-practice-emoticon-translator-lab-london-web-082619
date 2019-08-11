require "yaml"

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  new_emote_hash = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
  emoticons.each do |emote_name,corresponding_emote_array|
    new_emote_hash["get_meaning"][corresponding_emote_array[1]] = emote_name
    new_emote_hash["get_emoticon"][corresponding_emote_array[0]] = emoticons[emote_name][1]
  end
  new_emote_hash
end
#here you are creating and defining key-value pairs (in each empty nested hash) that invokes the correctly indexed value from the .yml file to be the key, and then assigning the value of this new key to be (in the get_meaning hash) the name of the emoticon (i.e. 'key' as designated in the block parameter)



