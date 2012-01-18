
class Poker

  SUITS = %w[H D C S]

  CARDS = [
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    'T',
    'J',
    'Q',
    'K',
    'A',
  ]

  def initialize(hand_one, hand_two)
    @hand_one = hand_one
    @hand_two = hand_two
  end

  def winning_hand
    values_one = @hand_one.map do |card|
      value, suit = card.split('')
      CARDS.index(value)
    end.sort

    values_two = @hand_two.map do |card|
      value, suit = card.split('')
      CARDS.index(value)
    end.sort

    if values_one.last > values_two.last
      @hand_one
    elsif values_two.last > values_one.last
      @hand_two
    else
      nil
    end
  end

end

p = Poker.new(
  %w[2H 3D 5S 9C KD],
  %w[2C 3H 4S 8C AH]
)

puts "The winning hand is #{p.winning_hand || "a tie"}."
