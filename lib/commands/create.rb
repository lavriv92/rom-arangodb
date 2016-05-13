require 'rom/commands'

module ROM
  module Arangodb
    class Create < ROM::Command::Create
      adapter :arangodb

      def collection
        relation.dataset
      end

      def execute(document)
      end
    end
  end
end
