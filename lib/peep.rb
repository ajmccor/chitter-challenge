
require 'pg'

class Peep
    def self.return_all
        if ENV['ENVIRONMENT'] == 'test'
            connection = PG.connect(dbname: 'chitter_test')    
        else 
            connection = PG.connect(dbname: 'chitter')
        end
        
        result = connection.exec("SELECT * FROM peeps;")
        result.map { |peeps| peeps['content'] }
    end
end