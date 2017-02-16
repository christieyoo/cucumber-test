require 'rubygems'
require 'cucumber'
require 'rspec'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "--format pretty"
end

task :default => [:features]