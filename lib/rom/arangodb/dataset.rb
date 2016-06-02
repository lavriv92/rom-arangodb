require 'rom/memory/dataset'

module ROM
  module Arangodb
    class Dataset
      attr_reader :collection

      def initialize(collection, options={})
        @collection = collection
        super
      end

    private
      def query
        @collection.query
      end

      def dataset
      end
    end
  end
end
