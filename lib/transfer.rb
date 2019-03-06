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
  @sender -= amount
  (@sender.valid? && @receiver.valid?)? true : false 
  @sender += amount 
end 

def reverse_transfer
  if @status == "complete" && valid?
    @sender.balance += @amount 
    @receiver.balance -= @amount
  else   
    end 
end 

def execute_transaction 
  if valid? == true 
    @sender.balance -= @amount 
    @receiver.balance += @amount 
    @status = "complete"
  else 
    @status = "rejected"
    "Transaction rejected. Please check your account balance."
  end
end 

end
