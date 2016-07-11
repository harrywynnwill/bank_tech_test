require 'Transaction'
describe Transaction do

  let(:date) {Date.parse("2016/06/27")}
  subject(:transaction) { Transaction.new(date ,30,0)}

  it "creates a new transaction with a date" do
    expect(transaction.date).to eq date
  end
  it "creates a new transaction with a debit" do
    expect(transaction.debit).to eq 30
  end
  it "creates a new transaction with a credit" do
    expect(transaction.credit).to eq 0
  end
end
