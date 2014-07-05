require "bundler/gem_tasks"
require 'rake'
require 'rake/testtask'
desc 'Default: run all tests.'
task :default => :test
Rake::TestTask.new(:test) do |t|

  t.libs << 'lib'
  t.test_files = Dir['test/unit/*_test.rb']
  t.verbose = true
  t.warning = true if ENV['WARNINGS']
end
