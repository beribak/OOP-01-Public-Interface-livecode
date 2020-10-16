


class BankAccount
	attr_reader :name, :balance
	def initialize(name, iban, initialDeposit, password)
		@name = name
		@balance = initialDeposit
		@password = password
		@iban = iban
		@transaction = ["t1", "t2"]
	end

	# "FR14-2004-1010-0505-0001-3M02-606"

	def iban
		iban = @iban.split("-")		# => ["FR14", "2004", "1010", "0505", "0001", "3M02", "606"] 
 #                                           0       1       2        3      4       5       6, -1
 		return "#{iban[0]}#{"x" * 20}#{iban[-1]}"
	end

	def to_s	
		return	"Owner: #{@name} - #{iban} - Balance: #{@balance}"	
	end

	def withdraw(amount_to_withdraw)
		add_transaction(-amount_to_withdraw)		
		return "You have withdrawn #{amount_to_withdraw}$."
	end

	def deposit(amount_to_deposit)
		add_transaction(amount_to_withdraw)		
		return "You have deposited #{amount_to_deposit}$."
	end

	def transaction_history(args = {})        #transaction_history({password: "12345"})
		if args[:password] == @password
			@transaction.each do |t|
				puts t
			end
		elsif args[:password].nil?
			puts "You have to type a password"
		else 
			puts "Wrong password"
		end
	end

	private
	
	def add_transaction(amount)
		@balance += amount
	end	
end

