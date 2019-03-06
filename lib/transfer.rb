class Transfer
  attr_accessor :pending, :amount 
  attr_reader :sender, :receiver
def initialize(sender, receiver, amount)
  @sender = sender
  @receiver = receiver
  @amount = amount 
  @status = "pending"
end 
end
