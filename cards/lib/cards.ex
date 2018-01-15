defmodule Cards do

  def cards_deck do
    suits = ["Spades", "Hearts", "Clubs" ,"Diamonds"]
    cards = Enum.to_list 2..9
    final_cards = ["Jack", "Queen", "King", "Ace"] ++ cards
    for card <- final_cards, suit <- suits do
       "#{card} of suit"
    end
  end

  def shuffle_cards([]), do: []
  def shuffle_cards(cards) do
     cards
      |> Enum.shuffle
  end

  def deal_the_cards([]), do: {:error, "No cards in deck"}
  def deal_the_cards(cards) do
    [card1, card2 | tail] = cards
    {dealed_cards: [card1, card2] , remaing_deck: tail}
  end

  def my_card_distribution() do
    cards_deck
     |> shuffle_cards
     |> deal_the_cards
  end

  def my_card_distribution(cards_deck) do
    cards_deck
     |> deal_the_cards
  end

end
