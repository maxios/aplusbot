Dir[File.join('bot', 'models', '*.rb')].each { |model| require "#{Dir.pwd}/#{model}" }
Dir[File.join('api', '*.rb')].each { |file| require "#{Dir.pwd}/#{file}" }
