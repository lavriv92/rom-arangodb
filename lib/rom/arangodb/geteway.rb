require 'ashikawa-core'
require 'rom/gateway'
require 'rom/arangodb/dataset'


module ROM
  module Arangodb

    class Gateway < ROM::Gateway
      def initialize
        @connection = Ashikawa::Core::Database.new do |config|
          config.url = 'http://localhost:8529'
          config.database_name = 'test_database'
          config.username = ''
          config.password = ''
        end
        @collections = {}
      end

      def dataset(name)
        @collections[name] = Dataset.new([], @connection)
      end

      def []()
        @collections.fetch(name)
      end

      def dataset?(name)
        @collections.include?(name)
      end

    end

  end
end
