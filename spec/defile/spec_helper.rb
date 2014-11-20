require "pry"
require "defile"
require "defile/backend_examples"

tmp_path = File.expand_path("tmp", Dir.pwd)

if File.exist?(tmp_path)
  raise "temporary path #{tmp_path} already exists, refusing to run tests"
else
  RSpec.configure do |config|
    config.after :suite do
      FileUtils.rm_rf(tmp_path)
    end
  end
end

