defmodule Game do

  def create_players() do
    player1 = %User{name: Sam, is_dealer: false}
    player2 = %User{name: Dealer, is_dealer: true}
    [player1, player2]
  end

  def start_play([player1, player2]) do
    player1 |> playing_game
  end

  def playing_game(player) do
    case player.game_status do
      nil ->
        {dealed_cards: [card1, card2] , remaing_deck: tail} = my_card_distribution
        score = card1 |> cal_score(card2)
        player = %User{name: Dealer, game_status: "playing", score: score}
        player |> playing_game
      "playing" ->
          my_card_distribution(remaining_deck)
          player |> playing_game
      "done" ->
          my_card_distribution()
          player |> playing_game
    end
  end

  def cal_score(card1, card2) do

  end

end
