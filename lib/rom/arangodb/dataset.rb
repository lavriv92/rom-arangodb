require 'rom/memory/dataset'

module ROM
  module Arangodb

    class Dataset < ROM::Memory::Dataset
      def self.row_proc
        Transproc[:has_recursion, Transproc[:symbolize_keys]] 
      end
    end

  end
end
