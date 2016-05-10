module ROM
  module Mongo

    class Relation < ROM::Relation
      adapter :arangodb
      forward :load, :all, :execute, :by_example
    end
  end
end
