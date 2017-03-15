require "yamljson/version"
require "yaml"
require "json"

module Yamljson

  # read whole file into a string, raise nice errors if files missing
  def self.read_file(filename)
    if File.exists?(filename)
      data = File.readlines(filename)
    else
      raise "File not found: #{filename}"
    end
    data.join("\n")
  end

  def self.yaml2json(filename)
    puts YAML.load(read_file(filename)).to_json
  end

  def self.json2yaml(filename)
    puts JSON.parse(read_file(filename)).to_yaml
  end
end
