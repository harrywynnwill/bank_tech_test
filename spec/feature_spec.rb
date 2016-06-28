require './lib/client.rb'
require './lib/transaction.rb'
require './lib/statement.rb'


describe "make credits and deposit and print a statement" do
  it "is expected to print a statemtent of transactions" do
    expected_output = "date || credit || debit || balance
    14/01/2012 || || 500.00 || 2500.00
    13/01/2012 || 2000.00 || || 3000.00
    10/01/2012 || 1000.00 || || 1000.00"
    harry = Client.new
    transaction = Transaction.new
    statement = Statement.new
    transaction.debit harry, 500, date = Date.parse("2012/01/14")
    transaction.credit harry, 2000, date = Date.parse("2012/01/13")
    transaction.credit harry, 1000, date = Date.parse("12012/01/10")

    expect(statement.print_statement harry).to eq expected_output
  end
end
