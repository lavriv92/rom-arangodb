require 'ashikawa-core'

module ROM
  module Arangodb

    class Geteway < ROM::Geteway
      def initialize(uri)
        @connection = Ashikawa::Core::Database do |config|
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
