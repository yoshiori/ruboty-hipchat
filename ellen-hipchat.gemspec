lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ellen/hipchat/version"

Gem::Specification.new do |spec|
  spec.name          = "ellen-hipchat"
  spec.version       = Ellen::Hipchat::VERSION
  spec.authors       = ["Ryo Nakamura"]
  spec.email         = ["r7kamura@gmail.com"]
  spec.summary       = "Hipchat adapter for Ellen"
  spec.homepage      = "https://github.com/r7kamura/ellen-hipchat"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "ellen", ">= 0.0.2"
  spec.add_dependency "xmpp4r"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
