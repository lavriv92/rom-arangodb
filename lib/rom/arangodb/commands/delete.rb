require 'rom/commands'

module ROM
  module Arangodb
    module Commands
      class Update < ROM::Commnds::Update
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
