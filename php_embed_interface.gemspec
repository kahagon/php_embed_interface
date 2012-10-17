# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'php_embed_interface/version'

Gem::Specification.new do |gem|
  gem.name          = "php_embed_interface"
  gem.version       = PHPEI::VERSION
  gem.authors       = ["Keng-ichi Ahagon"]
  gem.email         = ["k.ahagon@n-3.so"]
  gem.description   = %q{interface for Ruby to call PHP functions}
  gem.summary       = %q{interface for Ruby to call PHP functions}
  gem.homepage      = %q{https://github.com/oasynnoum/php_embed_interface}

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_dependency('php_embed', '>=0.0.3')
end
