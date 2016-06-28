class Account

  attr_reader :balance, :transactions

  def initialize
    @transactions = []
    @balance = 0
  end

  def credit value, date = Date.today
    plus_balance value
    transactions.push([date, value, "", balance])
  end

  def debit value, date = Date.today
    minus_balance value
    transactions.push([date,"" , value, balance])
  end

private

  def minus_balance sum
    @balance -= sum
  end

  def plus_balance sum
    @balance += sum
  end

end
