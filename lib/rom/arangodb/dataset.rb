require 'rom/memory/dataset'

module ROM
  module Arangodb
    class Dataset
      attr_reader :collection

      def initialize(collection)
        @collection = collection
      end

      def find(criteria)
        []
      end

      def all
        query.all
      end

      def insert(document)
        @collection.insert(document)
      end

      def update(document)
        @collection.update(document)
      end

    private
      def query
        @collection.query
      end

    end
  end
end
