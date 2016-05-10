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
        @sets = {}
      end

      def dataset(name)
        @sets[name] = Dataset.new([], @connection)
      end

      def []()
        @sets.fetch(name)
      end

      def dataset?(name)
        @sets.include?(name)
      end
    end

  end
end
