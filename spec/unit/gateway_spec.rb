
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
    configuration.realtion(:users) do
      def by_name(name)
        find(name)
      end

      def all
        find
      end
    end
  end

  describe 'test' do
    it 'simple#test' do
      expect(1).to eql(1)
    end
  end
end
