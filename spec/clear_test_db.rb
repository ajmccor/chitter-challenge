# require 'pg'

# def clear_test_db
#     p 'Setting up test database...'

#     connection = PG.connect(dbname: 'chitter_test')

#     connection.exec("TRUNCATE peeps;")
# end