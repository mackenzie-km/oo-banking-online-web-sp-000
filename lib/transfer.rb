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
  if valid? == true 
    @sender.balance -= @amount 
    @receiver.balance += @amount 
  else 
    "Transaction rejected. Please check your account balance."
  end
end 

end
