require 'spec_helper'

require 'virtus'

describe 'Arangdb gateway' do

  subject(:container) { ROM.container(configuration) }

  let(:configuration) { ROM::Configuration::new(:arangodb, {
    url: "http://localhost:8529", database_name:
    "test_database"
  }).use(:macros) }

  let(:gateway) { container.gateways[:default] }

  after do
    gateway.connection.drop
  end

  before do

    gateway.connection.create

    configuration.relation(:users) do
      def by_name(name)
        find(name)
      end

      def all
        find
      end
    end

    configuration.commands(:users) do
      define(:create)
      # define(:update)
      # define(:delete)
    end

    user_model = Class.new do
      include Virtus.value_object

      values do
        attribute :id, String
        attribute :name, String
        attribute :email, String
      end
    end

    configuration.mappers do
      define(:users) do
        model(user_model)
        register_as :model

        attribute :id, from: 'Id'
        attribute :name, from: 'name'
        attribute :email, from: 'email'
      end
    end

    container.relations.users.insert(name: 'Ivan', email: 'ilavriv@example.com')
    container.relations.users.insert(name: 'User', email: 'user@example.com')
  end

  describe 'test' do
    it 'simple#test' do
      expect(1).to eql(1)
    end
  end
end
