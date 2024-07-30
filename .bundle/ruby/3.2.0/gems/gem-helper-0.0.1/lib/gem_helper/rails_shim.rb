module GemHelper
  module RailsShim
    def self.config(file_path)
      YAML.load_file(File.join(RAILS_ROOT, 'config', file_path))
    end

    def self.load(config)
      self.load_config(config)
      self.load_config(config, 'geminstaller.local.yml') if Rails.env.test?
    end

    def self.load_config(config, file_path='geminstaller.yml')
      self.config(file_path)["gems"].each do |definition|
        if definition['lib'] != false && definition['version']
          config.gem definition["name"], definition.symbolize_keys!
        end
      end
    end

  end
end