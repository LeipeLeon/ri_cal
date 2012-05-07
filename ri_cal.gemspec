# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ri_cal/version"

Gem::Specification.new do |s|
  s.name = 'ri_cal'
  s.version = RiCal::VERSION
  s.authors = ['Yen-Ju Chen', 'Rick DeNatale']
  s.date = '2011-02-13'

  s.description = %q{A new Ruby implementation of RFC2445 iCalendar.

The existing Ruby iCalendar libraries (e.g. icalendar, vpim) provide for parsing and generating icalendar files,
but do not support important things like enumerating occurrences of repeating events.

This is a clean-slate implementation of RFC2445.

A Google group for discussion of this library has been set up http://groups.google.com/group/rical_gem
    }
  s.email = 'yjchenx@gmail.com'
  s.extra_rdoc_files = [
    "History.txt",
    "README.txt",
    "copyrights.txt"
  ]
  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")

  s.homepage = 'http://github.com/yjchen/ri_cal'
  s.require_paths = ["lib"]
#  s.rubygems_version = %q{1.3.7}
  s.summary = 'a new implementation of RFC2445 in Ruby'

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  s.add_development_dependency "tzinfo"
end
