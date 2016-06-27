class Client

  attr_reader :balance, :account

  def initialize
    @account = []
    @balance = 0
  end


  def minus_balance sum
    @balance -= sum
  end

  def plus_balance sum
    @balance += sum
  end
end
