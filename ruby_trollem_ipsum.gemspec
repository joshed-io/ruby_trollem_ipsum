require File.expand_path("../lib/ruby_trollem_ipsum/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "ruby_trollem_ipsum"
  s.version     = RubyTrollemIpsum::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Josh Dzielak"]
  s.email       = ["github_public@dz.oib.com"]
  s.homepage    = "http://github.com/dzello/ruby_trollem_ipsum"
  s.summary     = "An API client for http://trollemipsum.appspot.com"
  s.description = "Configurable length and type for all the trollings!"

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "ruby_trollem_ipsum"

  s.add_dependency "json"

  # If you need to check in files that aren't .rb files, add them here
  s.files        = Dir["{lib}/**/*.rb", "LICENSE", "*.md"]
  s.require_path = 'lib'
end
