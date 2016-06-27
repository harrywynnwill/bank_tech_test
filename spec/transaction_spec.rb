require 'transaction'
describe Transaction do
  let(:transaction) {Transaction.new}
  let(:test_account) {Client.new}
  let(:date){ Date.today.strftime("%F")}
  it {is_expected.to respond_to :debit}
  it {is_expected.to respond_to :credit}
  describe '#credit' do
    # it "deposits money to an account" do
    #   transaction.deposit(test_account, 10)
    #   expect(test_account.account).to eq [10]
    # end
    it "deposits money to the account and stores the date" do
      transaction.credit(test_account,10)
      expect(test_account.account).to eq [[date, 10,"",10]]
    end
  end
  describe '#debit' do
    it "withdrawls money to the account and stores the date" do
      transaction.debit(test_account, 10)
      expect(test_account.account).to eq [[date,"", 10, -10]]
    end
  end
end
