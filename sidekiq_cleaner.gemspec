require_relative 'lib/sidekiq/version'

Gem::Specification.new do |gem|
  gem.authors       = ["Dan Belling"]
  gem.email         = ["danhbelling@gmail.com"]
  gem.summary       = "A sidekiq cleaner library."
  gem.description   = "A cleaner library for the sidekiq job processor for use by the RL engineering team."
  gem.homepage      = "https://github.com/reachlocal/sidekiq-cleaner"
  gem.license       = "LGPL-3.0"

  gem.executables   = ['sidekiq', 'sidekiqmon']
  gem.files         = `git ls-files | grep -Ev '^(test|myapp|examples)'`.split("\n")
  gem.name          = "sidekiq_cleaner"
  gem.version       = Sidekiq::VERSION
  gem.required_ruby_version = ">= 2.5.0"

  gem.add_dependency "redis", ">= 4.1.0"
  gem.add_dependency "connection_pool", ">= 2.2.2"
  gem.add_dependency "rack", "~> 2.0"
  gem.add_dependency "rack-protection", ">= 2.0.0"
end
