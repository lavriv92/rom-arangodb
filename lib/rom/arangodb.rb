require 'rom'

require 'rom/arangodb/version'
require 'rom/arangodb/relation'
require 'rom/arangodb/gateway'

ROM.register_adapter(:arangodb, ROM::Arangodb)
