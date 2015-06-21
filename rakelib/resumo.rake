require 'liquid'
require 'yaml'

config = YAML.load_file('trabalho-academico.yaml')

task :resumo do
  @template = Liquid::Template.parse(IO.read('templates/resumo.tex.liquid')) # Parses and compiles the template

  puts @template.render(config)
end
