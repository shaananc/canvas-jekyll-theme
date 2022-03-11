# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "canvas-jekyll-theme"
  spec.version       = "0.1.0"
  spec.authors       = ["Shaanan Cohney"]
  spec.email         = ["shaananc@gmail.com"]

  spec.summary       = "Canvas Jekyll Theme"
  spec.homepage      = "https://github.com/shaananc/canvas-jekyll-theme"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", ">= 3.5", "< 5.0"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.9"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.1"

  spec.add_development_dependency "bundler"

end
