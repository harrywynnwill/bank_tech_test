class Statement

  HEADINGS = "date || credit || debit || balance"

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def print_statement account
      statement = account.transactions.reverse.map do |transaction|
      date = format_date transaction.date
      balance = balance_line transaction.credit, transaction.debit
      "#{date} || #{format_number transaction.credit} || #{format_number transaction.debit} || #{format_number balance}\n"
  end
     "#{HEADINGS}\n#{statement.join("")}"
  end

  private

  def balance_line credit, debit
    @balance += credit
    @balance -= debit
  end

  def reset_balance
    @balance = 0
  end

  def format_date date
    date.strftime("%d/%m/%Y")
  end

  def format_number number
    number == 0 ? "" : '%.2f' % number
  end

end
