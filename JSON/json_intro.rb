require 'json'

json = File.read('json_example.json')

p json.class

json_pase = JSON.parse(File.read('json_example.json'))

p json_pase["colors"][0]['color']
