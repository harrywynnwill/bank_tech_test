require './lib/account.rb'
require './lib/statement.rb'


describe "make credits and deposit and print a statement" do
  it "is expected to print a statemtent of transactions" do
    expected_output = "date || credit || debit || balance\n14/01/2012 || || 500.00 || 2500.00\n13/01/2012 || 2000.00 || || 3000.00\n10/01/2012 || 1000.00 || || 1000.00"
    test_account = Account.new

    statement = Statement.new
    test_account.credit 1000, date = Date.parse("2012/01/10")
    test_account.credit 2000, date = Date.parse("2012/01/13")
    test_account.debit 500, date = Date.parse("14-01-2012")

    expect(statement.print_statement test_account).to eq expected_output
  end
end
