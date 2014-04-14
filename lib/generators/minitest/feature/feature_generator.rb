require "minitest-rails"
require "generators/minitest"

module Minitest
  module Generators
    class FeatureGenerator < Base

      def self.source_root
        @_minitest_capybara_source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'templates'))
      end

      class_option :spec, type: :boolean, default: false, desc: "Use Minitest::Spec DSL"

      check_class_collision suffix: "Test"

      def create_test_files
        if options[:spec]
          template 'feature_spec.rb', File.join('test/features', class_path, "#{file_name}_test.rb")
        else
          template 'feature_test.rb', File.join('test/features', class_path, "#{file_name}_test.rb")
        end
      end
    end
  end
end
