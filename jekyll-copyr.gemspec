# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jekyll-copyr/version"

Gem::Specification.new do |spec|
  spec.name         = "jekyll-copyr"
  spec.version      = Jekyll::Copyr::VERSION
  spec.authors      = ["Boy van Amstel"]

  spec.summary      = "A plugin for Jekyll to easily copy files."
  spec.homepage     = "https://www.github.com/boyvanamstel/jekyll-copyr"
  spec.license      = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["source_code_uri"] = spec.homepage
    spec.metadata["changelog_uri"] = spec.homepage
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = Dir.glob("{bin,lib}/**/*") + %w(LICENSE README.md)
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r!^exe/!) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.6.2"

  spec.add_dependency "jekyll", ">= 3.3", "< 5.0"
  spec.add_development_dependency "bundler", "~> 2.1.2"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop-jekyll", "~> 0.11.0"
end
