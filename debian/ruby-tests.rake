if RUBY_VERSION >= '2.3'
  require 'gem2deb/rake/testtask'
  Gem2Deb::Rake::TestTask.new do |t|
    t.libs << "test"
    t.test_files = Dir['test/**/*_test.rb'].reject do |path|
      /(verbose_formatter|extra_features)/ =~ path
    end
    t.verbose = true
  end
else
  task :default do
    puts 'Skipping tests on Ruby < 2.3'
  end
end

