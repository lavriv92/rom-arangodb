require 'rom/memory/dataset'

module ROM
  module Arangodb
    class Dataset

      attr_reader :collection

      def initialize(collection)
        @collection = collection
      end
    end
  end
end
