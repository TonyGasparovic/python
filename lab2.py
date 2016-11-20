#!/usr/bin/python3

# lab2.py
# Tony Gasparovic 10/03/016

guess_number = 6
max_number = 10

print('Guess a number from 1 to %d. (Please enter 0 if you wish to end this simulation.):  ' % max_number)

while 1:

     temp = input()
     temp = int(temp)

     if temp < 1:
        print('End Simulation')
        break
     elif temp > max_number:
        print('That is not a number from 1 to %d!' % max_number);
     elif temp < guess_number:
         print('That is too low.')
     elif temp > guess_number:
        print('That is too high!')
     elif temp == guess_number:
        print('That is correct!') 
        print('End Simulation')
        break

     print('Guess again! (Number from 1 to %d, 0 to end.):  ' % max_number)
        
