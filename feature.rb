require './lib/account.rb'
require './lib/statement.rb'
test_account = Account.new
statement = Statement.new
test_account.credit date = Date.parse("2012/01/10"), 1000
test_account.credit date = Date.parse("2012/01/13"), 200
test_account.debit date = Date.parse("14-01-2012"), 500
statement.statement_line test_account
