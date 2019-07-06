Dir[File.join('bot', 'models', '*.rb')].each { |model| require "#{Dir.pwd}/#{model}" }
