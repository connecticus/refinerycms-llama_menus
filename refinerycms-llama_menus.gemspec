# Encoding: UTF-8

Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-llama_menus'
  s.version           = '1.0.4'
  s.description       = 'Ruby on Rails Menus extension for Refinery CMS'
  s.date              = '2013-11-28'
  s.summary           = 'Menus extension for Refinery CMS'
  s.require_paths     = %w(lib)
  s.files             = Dir["{app,config,db,lib}/**/*"] + ["readme.md"]
  s.authors           = ['Nick Bolt']

  # Runtime dependencies
  s.add_dependency             'refinerycms-core',          '~> 2.1.0'
  s.add_dependency             'refinerycms-nested_models', '~> 0.0.2'
  s.add_dependency             'draper',                    '~> 1.3.0'

  # Development dependencies (usually used for testing)
  s.add_development_dependency 'refinerycms-testing', '~> 2.1.0'
end
