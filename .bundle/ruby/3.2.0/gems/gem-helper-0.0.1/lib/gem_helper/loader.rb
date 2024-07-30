require 'yaml'

module GemHelper
  module Loader
    attr_accessor :root_path
    
    def self.config(file_path)
      YAML.load_file(File.join(self.root_path, 'config', file_path))
    end

    def self.load(file_path='geminstaller.yml')
      gems = []
      self.config(file_path)["gems"].each do |definition|
        if definition['lib'] != false && definition['version']
          self.configure definition
          gems << "#{definition['name']} [#{definition['version'] || "> 0.0"}]"
        end
      end
      p "Loaded: #{gems.join(', ')}"
    end

    def self.configure(definition)
      gem definition['name'], definition['version']
      require definition['lib'] if definition['lib']
    end

  end
end