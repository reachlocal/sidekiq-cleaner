require_relative 'lib/sidekiq/version'

Gem::Specification.new do |gem|
  gem.authors       = ["Dan Belling"]
  gem.email         = ["danhbelling@gmail.com"]
  gem.summary       = "A sidekiq cleaner library."
  gem.description   = "A cleaner library for the sidekiq job processor for use by the RL engineering team."
  gem.homepage      = "https://manage.fury.io/dashboard/reachlocal/package/pkg_1Eg6Yg"
  gem.license       = "LGPL-3.0"

  gem.executables   = ['sidekiq', 'sidekiqctl']
  gem.files         = `git ls-files | grep -Ev '^(test|myapp|examples)'`.split("\n")
  gem.name          = "sidekiq-cleaner"
  gem.version       = Sidekiq::VERSION
  gem.required_ruby_version = ">= 2.2.2"

  gem.add_dependency 'redis', '>= 3.3.5', '< 5'
  gem.add_dependency 'connection_pool', '~> 2.2', '>= 2.2.2'
  gem.add_dependency 'rack', '>= 1.5.0'
  gem.add_dependency 'rack-protection', '>= 1.5.0'
end
