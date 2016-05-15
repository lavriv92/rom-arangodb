module ROM
  module Arangodb

    class Relation < ROM::Relation
      adapter :arangodb
      forward :load, :all, :execute, :by_example
    end
    
  end
end
