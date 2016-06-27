require './lib/client.rb'
require './lib/transaction.rb'
require './lib/statement.rb'
harry = Client.new
transaction = Transaction.new
statement = Statement.new
transaction.credit harry, 50
transaction.credit harry, 100
transaction.credit harry, 40000
transaction.debit harry, 50
