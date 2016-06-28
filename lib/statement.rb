class Statement

  HEADINGS = "date || credit || debit || balance"

  def print_statement account
    format_statement account
    statement = account.transactions.reverse.map do |x|
   "#{x[0]} || #{x[1]} || #{x[2]} || #{x[3]}\n"
    end
     "#{HEADINGS}\n#{statement.join("")}"
  end


  def format_statement account
    account.transactions.each do |x|
      x[0] = x[0].strftime("%d/%m/%Y")
     x[1] == "" ? x[1] = "" : x[1] = '%.2f' % x[1]
     x[2] == "" ? x[2] = "" : x[2] = '%.2f' % x[2]
     x[3] == "" ? x[3] = "" : x[3] = '%.2f' % x[3]
   end
  end
end
