require 'Account'
describe Account do

  let(:test_account) {described_class.new(transaction: transaction)}
  let(:transaction) { Transaction.new }
  let(:transaction3) {double :transaction3, date: Date.parse("14/01/2012"), credit: 0, debit: 500}
  let(:date){ Date.today}

   it {is_expected.to respond_to :credit}
   it {is_expected.to respond_to :debit}

  before do
    allow(Date).to receive(:today).and_return("2016-06-27")
  end

  it "initializes with an account that is empty" do
    expect(test_account.transactions).to eq []
  end

  describe '#credit' do
    it "deposits money to the account and stores the date" do
      allow(transaction).to receive(:new).with(transaction3)

      expect(test_account.transactions).to eq transaction3
    end
  end
describe '#debit' do
    it "withdrawls money to the account and stores the date" do
      test_account.debit(10)
      expect(test_account.transactions).to eq [[date,"", 10, -10]]
    end
  end
end
