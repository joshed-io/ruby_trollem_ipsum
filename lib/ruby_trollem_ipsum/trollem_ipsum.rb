require 'json'
require 'net/http'

# Copyright Josh Dzielak, 2012
# MIT License

# A simple Ruby client for http://trollemipsum.appspot.com
class TrollemIpsum

  def self.lorem(type=nil, length=nil)
    self.new.lorem(type, length)
  end

  # scope available lengths and/or types to those of your choosing
  def initialize(available_lengths=nil, available_types=nil)

    @options = JSON.parse(Net::HTTP.get('trollemipsum.appspot.com', '/api.json'))
    @types =
      (available_types ||
        JSON.parse(@options["available_types"].gsub(/'/, "\"")).keys)
    @lengths =
      (available_lengths ||
        JSON.parse(@options["available_lengths"].gsub(/'/, "\"")).keys)

  end

  # randomly chooses type and length set in
  # initializer unless you pass them
  def lorem(type=nil, length=nil)

    type   ||= @types.sample
    length ||= @lengths.sample

    begin
      JSON.parse(
        Net::HTTP.get(
          "trollemipsum.appspot.com",
          "/api.json?type=#{type}&length=#{length}"))["lorem"]
    rescue => e
      trololol
    end

  end

  def trololol
    "tro#{"lo"*(2...10).to_a.sample}l"
  end
end

