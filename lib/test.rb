


require_relative "bankaccount.rb"

account = BankAccount.new("John Lennon", "FR14-2004-1010-0505-0001-3M02-606", 200, "yoko")

# puts account.iban
# puts account.to_s
puts account.transaction_history({password: "yoko"})
puts account.transaction_history()
puts account.transaction_history({password: "yokw"})