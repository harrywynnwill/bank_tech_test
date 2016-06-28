class Transaction




 def credit client, value, date = Date.today

   client.plus_balance value
   client.account.push([date, value,"", client.balance])
 end

 def debit client, value, date = Date.today

   client.minus_balance value
   client.account.push([date ,"" ,value, client.balance])
 end
end
