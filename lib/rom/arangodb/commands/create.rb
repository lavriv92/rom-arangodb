require 'rom/commands'

module ROM
  module Arangodb
    module Commands
      class Create < ROM::Command::Create
        adapter :arangodb

        def collection
          relation.dataset
        end

        def execute(document)
          collection.insert(document)
        end
      end
    end
  end
end
