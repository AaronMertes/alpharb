lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "alpharb/version"

Gem::Specification.new do |spec|
  spec.name          = "alpharb"
  spec.version       = Alpharb::VERSION
  spec.authors       = ["Hugo Lyra"]
  spec.email         = ["me@hugolyra.com"]

  spec.summary       = %q{AlphaRB.}
  spec.description   = %q{A Ruby library to query the Alpha Vantage API.}
  spec.homepage      = "https://github.com/hamorim/alpharb"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency "faraday", "~> 0.17.0"
  spec.add_dependency "oj", "~> 3.9", ">= 3.9.2"
end
