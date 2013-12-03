$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "scaffold_cn/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "scaffold_cn"
  s.version     = ScaffoldCn::VERSION
  s.authors     = ["homeway"]
  s.email       = ["homeway.xue@gmail.com"]
  s.homepage    = "https://github.com/homeway/scaffold_cn"
  s.summary     = "You can easily include the gem to get scaffold for zh_CN."
  s.description = "You can easily include the gem to get scaffold for zh_CN."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.0"

  s.add_development_dependency "sqlite3"
end
