module ROM
  module Mongo

    class Rrelation < ROM::Relation
      adapter :arangodb
      forward :insert, :find, :without, :skip, :limit
    end
  end
end
