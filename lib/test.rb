require_relative "bankaccount.rb"

account = BankAccount.new("John Lennon", "FR14-2004-1010-0505-0001-3M02-606", 200, "yoko")

puts account.iban # => "FR14**************606"
puts account.to_s  # => Owner: John Lennon - IBAN: FR14**************606 - Balance: 200 euros
puts account.transaction_history({password: "yoko"}) # => "t1" "t2"
puts account.transaction_history() # => "You have to enter a password!!!"
puts account.transaction_history({password: "yokw"}) # => "Wrong password!!!"