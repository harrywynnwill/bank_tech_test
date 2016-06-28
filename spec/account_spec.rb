require 'Account'
describe Account do

  let(:test_account) {Account.new}

  let(:date){ Date.today}
   it {is_expected.to respond_to :credit}
   it {is_expected.to respond_to :debit}
  before do
    allow(Date).to receive(:today).and_return("2016-06-27")

  end

  it "initializes with an account that is empty" do
    expect(test_account.transactions).to eq []
  end

  it "initializes with a balance of zero" do
    expect(test_account.balance).to eq 0
  end
  describe '#credit' do
    it "deposits money to the account and stores the date" do
      test_account.credit(10)
      expect(test_account.transactions).to eq [[date, 10,"",10]]
    end
  end
  describe '#debit' do
    it "withdrawls money to the account and stores the date" do
      test_account.debit(10)
      expect(test_account.transactions).to eq [[date,"", 10, -10]]
    end
  end
end
