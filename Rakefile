require 'rake'
require 'rake/testtask'
Dir.glob("lib/tasks/*.rake").each { |r| load r }

task default: :test

desc "default test"
task :test do
  source_files =  Rake::FileList.new("test/*.rb") do |fl|
    fl.exclude("*/test_helper.rb")
  end
  source_files.map { |i| ruby i }
end