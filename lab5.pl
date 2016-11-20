#!/usr/bin/python3

# lab5.py
# Tony Gasparovic 11/02/2016
## updated this code for git

def make_change( cash_amount, try_coin ):
  coin_value = {'quarter': .25, 'dime': .10, 'nickel': .05, 'penny': .01}
  num_of_coins  = int( round(cash_amount,2) / coin_value[try_coin] )
  change_left = round(cash_amount,2) - ( num_of_coins * coin_value[try_coin] )
  return (num_of_coins, change_left)



while True:
      try:
           print('Enter amount of bill (2 decimal digits only ~~e.g. 1.00 for $1, 0.25 for 25 cents, etc.): ', end='')
           cash_amount = input()
           f=cash_amount.split('.')
           if len(f)==2 and len(f[1]) == 2:  # check split has 2 values. check decimal point has 2 digit length
                 cash_amount = float(cash_amount)
                 break
           else:
              raise ValueError
               
      except ValueError:
             print("Try again! Value error, Please enter a dollar amount as a 2 digit decimal point")



cash_amount_pocket = cash_amount

coins = ['quarter', 'dime', 'nickel', 'penny']

your_change = {};
for try_coin in coins:
    ( your_change[try_coin] , cash_amount) = make_change( cash_amount , try_coin )


print("\nFor the bill amount of $", cash_amount_pocket, ", you will need:", sep='')
print(your_change['quarter'], "quarter(s),", your_change['dime'], "dime(s),", your_change['nickel'], "nickel(s), and", your_change['penny'], "penny/pennies.\n" )
