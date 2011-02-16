# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{options_library}
  s.version = "1.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dan Tylenda-Emmons"]
  s.date = %q{2011-02-16}
  s.description = %q{A gem used to calc the price of an option.}
  s.email = %q{jrubyist@gmail.com}
  s.extra_rdoc_files = ["README.md", "lib/options_library.rb", "lib/options_library/option_calculator.rb"]
  s.files = ["Manifest", "README.md", "Rakefile", "lib/options_library.rb", "lib/options_library/option_calculator.rb", "options_library.gemspec"]
  s.homepage = %q{http://github.com/codertrader/options_library}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Options_library", "--main", "README.md"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{options_library}
  s.rubygems_version = %q{1.5.2}
  s.summary = %q{A gem used to calc the price of an option.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
