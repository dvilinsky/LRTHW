# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "ex47"
  spec.version       = '1.0'
  spec.authors       = ["Daniel Vilinsky"]
  spec.email         = ["dvilinsk@brandeis.edu"]
  spec.summary       = %q{Short summary of your project}
  spec.description   = %q{Longer description of your project.}
  spec.homepage      = "https://github.com/dvilinsky"
  spec.license       = "MIT"

  spec.files         = ['lib/ex47.rb']
  spec.executables   = ['ex47']
  spec.test_files    = ['tests/test_ex47.rb']
  spec.require_paths = ["lib"]
end
