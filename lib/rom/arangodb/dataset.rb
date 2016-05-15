require 'rom/memory/dataset'

module ROM
  module Arangodb
    class Dataset

      attr_reader :collection

      def initialize(collection)
        @collection = collection
      end

      def find(criteria={})
        Dataset.new()
      end

      def load
        collection.load
      end

      def all
        query.all
      end

      def execute
      end

      def by_example(example)
        query.by_example(example)
      end

      private
      def query
        @collection.query
      end
    end
  end
end
