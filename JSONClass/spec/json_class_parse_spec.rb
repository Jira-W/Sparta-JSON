require 'spec_helper'

describe 'Testing the exhange rates' do

before(:all) do
  @exchange_rates = ParseJson.new('json_exchange_rates.json')
end

it 'Should be a hash' do
  expect(@exchange_rates.json_file).to be_kind_of(Hash)
end

it 'Should contain th base as EUR' do
  expect(@exchange_rates.get_base).to eq 'EUR'
end

it 'Should be a date string' do
  expect(@exchange_rates.get_date).to be_kind_of(String)
end

it 'Should have 31 rates' do
  expect(@exchange_rates.get_rates.length).to eq 31
  expect(@exchange_rates.get_rates_keys).not_to be_empty
end

it 'Should have all rates as float' do
  expect(@exchange_rates.get_rates_values).to all(be_a(Float))
end





end
