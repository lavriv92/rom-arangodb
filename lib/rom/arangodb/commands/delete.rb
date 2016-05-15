require 'rom/commands'

module ROM
  module Arangodb
    module Commands
      class Delete < ROM::Command::Delete
        adapter :arangodb

        def collection
          relation.dataset
        end

        def execute(criteria)
        end
      end
    end
  end
end
