require 'json'

class ParseJson
  attr_accessor :json_file

  def initialize(json_file)
    @json_file = JSON.parse(File.read(json_file))
  end

  def get_base
    @json_file['base']
  end
  def get_date
    @json_file['date']
  end
  def get_rates
    @json_file['rates']
  end
  def get_rates_keys
    x = @json_file['rates'].each {|key|}
    x.keys
  end
  def get_rates_values
    @json_file['rates'].values
  end




end

example = ParseJson.new('json_exchange_rates.json')
p example.get_rates_keys
