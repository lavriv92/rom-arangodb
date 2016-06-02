module ROM
  module Arangodb

    class Relation < ROM::Relation
      adapter :arangodb
    end

  end
end
