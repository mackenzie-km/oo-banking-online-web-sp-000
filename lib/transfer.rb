class Transfer
  attr_accessor :status, :amount
  attr_reader :sender, :receiver
def initialize(sender, receiver, amount)
  @sender = sender
  @receiver = receiver
  @amount = amount 
  @status = "pending"
end 

def valid?
  (@sender.valid? && @receiver.valid?)? true : false 
end 

def execute_transaction 
  value = "" 
  if valid? == true 
    @sender.balance -= @amount 
    @receiver.balance += @amount 
    @status = "complete"
  else 
    value = "Transaction rejected. Please check your account balance."
  end
  value 
end 

end
