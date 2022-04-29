card_number = "5541808923795240"

# Your Luhn Algorithm Here
# full_luhn = card_number.to_i.digits.reverse.map.with_index { |n, index| index % 2 == 0 ? n*2 : n }.map { |n| n > 9 ? n.digits.sum : n }.sum % 10 == 0 ? "The number #{card_number} is valid!" : "The number #{card_number} is invalid!"

# step by step
acc_number = card_number.to_i.digits.reverse
double_every_other_digit = acc_number.map.with_index { |n, index| index % 2 == 0 ? n*2 : n }
summed_digits_over_ten = double_every_other_digit.map { |n| n > 9 ? n.digits.sum : n }
results_summed = summed_digits_over_ten.sum
divisible_by_ten = results_summed % 10

# Output
## If it is valid, print "The number [card number] is valid!"
## If it is invalid, print "The number [card number] is invalid!"
output = divisible_by_ten == 0 ? "The number #{card_number} is valid!" : "The number #{card_number} is invalid!"
