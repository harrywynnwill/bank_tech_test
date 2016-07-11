require 'statement'
describe Statement do
  let(:statement) {Statement.new}

  let(:transaction1) {double :transaction1, date: Date.parse("10/01/2012"), credit: 1000, debit: 0}
  let(:transaction2) {double :transaction2, date: Date.parse("13/01/2012"), credit: 2000, debit: 0}
  let(:transaction3) {double :transaction3, date: Date.parse("14/01/2012"), credit: 0, debit: 500}
  let(:test_account) {double :account, transactions: [transaction3, transaction2, transaction1]}



  let(:expected_output) {"date || credit || debit || balance
14/01/2012 ||  || 500.00 || 2500.00
13/01/2012 || 2000.00 ||  || 3000.00
10/01/2012 || 1000.00 ||  || 1000.00"}

it "initializes with a balance of zero" do
  expect(statement.balance).to eq 0
end


  describe "#print_statement" do
    it "prints a statement" do
      expect(statement.print_statement(test_account)).to eq expected_output
    end
  end
end
