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

  def self.yaml2json(filename, no_pretty = false)
    begin
      json = YAML.load(read_file(filename))
      if no_pretty
        res = json.to_json
      else
        res = JSON.pretty_generate(json)
      end
    rescue Psych::SyntaxError
      raise "syntax error in #{filename}"
    end

    res
  end

  def self.json2yaml(filename)
    begin
      JSON.parse(read_file(filename)).to_yaml
    rescue JSON::ParserError
      raise "syntax error in #{filename}"
    end
  end
end
