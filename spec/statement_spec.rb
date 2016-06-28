require 'statement'
describe Statement do
  let(:statement) {Statement.new}
  let(:test_account) {Client.new}
  let(:transaction) {Transaction.new}
  let(:date){ Date.today}
  before do
    allow(Date).to receive(:today).and_return("2016-06-27")

  end
  describe "#print_statement" do
    it "prints a statement" do
      transaction.debit(test_account, 50)
      transaction.debit(test_account, 80)
      transaction.credit(test_account, 60)
      expect(statement.print_statement(test_account)).to eq "date || credit || debit || balance\n#{date}|| || 50.0|| -50.0\n#{date}|| || 80.0|| -130.0\n#{date}|| 60.0|| || -70.0\n"
    end
  end
end
