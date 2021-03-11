require_relative 'lib/draco/state'

Gem::Specification.new do |spec|
  spec.name          = "draco-state"
  spec.version       = "0.2.0"
  spec.authors       = ["Matt Pruitt"]
  spec.email         = ["matt@guitsaru.com"]

  spec.summary       = %q{A Draco add-on to enable writing state machines}
  spec.homepage      = "https://github.com/guitsaru/draco-state"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "draco", "~> 0.6"
end
