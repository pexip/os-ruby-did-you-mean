if RUBY_VERSION >= '2.5'
  require 'gem2deb/rake/testtask'
  Gem2Deb::Rake::TestTask.new do |t|
    t.libs << "test"
    t.test_files = Dir['test/**/*_test.rb'].reject do |path|
      /(verbose_formatter|extra_features|experimental)/ =~ path
    end
    t.verbose = true
  end
else
  task :default do
    puts 'Skipping tests on Ruby < 2.5'
  end
end

