# module GemLiux1
# 	module Init
# 		def base_directory(*subdirs)
# 	      File.expand_path(File.join(File.dirname(__FILE__), "..", *subdirs))
# 	    end
# 	    module_function :base_directory
# 	end
# end

# begin
# 	require "compass"
# 	Compass::Frameworks.register("test2345",:stylesheets_directory => GemLiux1::Init.base_directory("stylesheets"))
# end


testall_stylesheets_path = File.expand_path(File.join(File.dirname(__FILE__), '..', 'stylesheets'))
ENV['SASS_PATH'] ||= ''
begin
  require 'compass'
  Compass::Frameworks.register('testall', :stylesheets_directory => testall_stylesheets_path)
rescue LoadError
end
# compass not found, register on the Sass path via the environment.
ENV['SASS_PATH'] += File::PATH_SEPARATOR + testall_stylesheets_path

