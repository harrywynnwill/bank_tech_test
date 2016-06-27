class Transaction

DATE = Date.today.strftime("%F")


 def credit client, value
   client.plus_balance value
   client.account.push([DATE, value,"", client.balance])
 end

 def debit client, value
   client.minus_balance value
   client.account.push([DATE,"" ,value, client.balance])
 end
end
