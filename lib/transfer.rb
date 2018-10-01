require 'pry'

class Transfer

  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    if @sender.valid? == true && @receiver.valid? == true
      true
    else
      false
    end
  end

  def execute_transaction

<<<<<<< HEAD

    if @sender.balance >= @amount && @status != "complete"
=======
    if @sender.balance >= @amount
>>>>>>> 797947957e676afcb975e933e1895b98040c6b97

      @receiver.deposit(@amount)
      @sender.deposit(0-@amount)
      @status = "complete"
<<<<<<< HEAD
=======
      @executed = true
>>>>>>> 797947957e676afcb975e933e1895b98040c6b97

    else

      @status = "rejected"
      "Transaction rejected. Please check your account balance."

<<<<<<< HEAD
=======

>>>>>>> 797947957e676afcb975e933e1895b98040c6b97
    end
  end

  def reverse_transfer
<<<<<<< HEAD
    if @status == "complete"
=======
    unless @executed == false
      binding.pry
>>>>>>> 797947957e676afcb975e933e1895b98040c6b97
      @receiver.deposit(0-@amount)
      @sender.deposit(@amount)
      @status = "reversed"
    end
  end

end
