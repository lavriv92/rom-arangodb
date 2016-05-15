require 'ashikawa-core'
require 'rom/gateway'
require 'rom/arangodb/dataset'


module ROM
  module Arangodb

    class Gateway < ROM::Gateway
      def initialize(**options)
        @connection = Ashikawa::Core::Database.new do |config|
          config.url = options[:url]
          config.database_name = options[:database_name]
          config.username = options[:username]
          config.password = options[:password]
        end
        @collections = {}
      end

      def dataset(name)
        @collections[name] = Dataset.new(@connection[name])
      end

      def [](name)
        @collections[name]
      end

      def dataset?(name)
        @collections.include?(name)
      end

      def command_namespase
        Rom::Arangodb::Commands
      end

    end

  end
end
