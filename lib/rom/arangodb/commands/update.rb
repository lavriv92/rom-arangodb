require 'rom/commands'

module ROM
  module Arangodb
    module Commands
      class Update < ROM::Command::Update
        adapter :arangodb

        def collection
          relation.dataset
        end

        def execute
        end
      end
    end
  end
end
