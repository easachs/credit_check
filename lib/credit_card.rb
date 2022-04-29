class CreditCard

  attr_reader :card_number, :limit

  def initialize(card_number, limit)
    @card_number = card_number
    @limit = limit
  end

  def is_valid?
    if card_number.length == 16
      acc_number = card_number.to_i.digits.reverse
      double_every_other_digit = acc_number.map.with_index { |n, index| index % 2 == 0 ? n*2 : n }
      summed_digits_over_ten = double_every_other_digit.map { |n| n > 9 ? n.digits.sum : n }
      results_summed = summed_digits_over_ten.sum
      divisible_by_ten = results_summed % 10
      output = divisible_by_ten == 0
      output
    else
      false
    end
  end

  def last_four
    card_number[-4..-1]
  end
end
