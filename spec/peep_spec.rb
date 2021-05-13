require 'peep'

describe Peep do
    describe '.return_all' do
        it 'returns all peeps' do
            connection = PG.connect(dbname: 'chitter_test')

            connection.exec("INSERT INTO peeps (content) VALUES ('Peeps ahoy!');")
            connection.exec("INSERT INTO peeps (content) VALUES ('Dis peep, dat peep');")
            
            peeps = Peep.return_all

            expect(peeps).to include("Peeps ahoy!")
            expect(peeps).to include("Dis peep, dat peep")
        end
    end
end