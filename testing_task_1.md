### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame

  # There is no initialize method here nor readers/writers.

  def checkforAce(card)
    if card.value = 1 # This should be == for comparison
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2) # Typo here: 'dif' should be 'def', also there should be a comma between 'card1' and 'card2'.
  if card1.value > card2.value # The following block should ideally be indented for ease of reading.
    return card # 'card' should be replaced with 'card1'
  else
    return card2
  end
end
end # Additional end here that should not be present.

def self.cards_total(cards)
  total # Variable should be assigned an initial value, e.g. total = 0.
  for card in cards
    total += card.value
    return "You have a total of" + total # The position of this line should be swapped with line 33, 'total' should be interpolated.
  end
end
# Additional 'end' here once end on line 26 is deleted and code is correctly indented.
```
