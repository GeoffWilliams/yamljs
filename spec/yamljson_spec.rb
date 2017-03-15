require "spec_helper"

RSpec.describe Yamljson do
  it "has a version number" do
    expect(Yamljson::VERSION).not_to be nil
  end

  it "read_file errors when data file missing" do
    expect{Yamljson.read_file("nothere")}.to raise_error(/not found/)
  end

  it "read_file reads files correctly" do
    data = Yamljson.read_file("LICENSE")
    expect(data.empty?).not_to be true
  end

  it "yaml2json converts JSON files correctly" do
    expect(Yamljson.json2yaml("spec/fixtures/good/json").empty?).not_to be true
  end

  it "yaml2json converts YAML files correctly" do
    expect(Yamljson.yaml2json("spec/fixtures/good/yaml").empty?).not_to be true
  end

  it "yaml2json reports bad syntax in JSON files" do
    expect{Yamljson.json2yaml("spec/fixtures/bad/json")}.to raise_error(/syntax/)
  end

  it "yaml2json reports bad syntax in YAML files" do
    expect{Yamljson.yaml2json("spec/fixtures/bad/yaml")}.to raise_error(/syntax/)
  end

end
