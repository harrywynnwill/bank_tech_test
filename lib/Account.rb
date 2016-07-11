require "./lib/transaction.rb"
require "./lib/statement.rb"

class Account

   attr_reader :balance, :transactions

  def initialize transaction = Transaction
    @transaction = transaction
    @transactions = []
  end

  def credit date = Date.today, credit
    transactions << @transaction.new(date, credit, 0)
  end

  def debit date = Date.today, debit
    transactions << @transaction.new(date, 0, debit)
  end



end
