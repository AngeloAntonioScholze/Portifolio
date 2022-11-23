import 'package:flame/components.dart';
import 'package:solitaire/solitaire_game.dart';
import '../models/card.dart';

class StockPile extends PositionComponent {
  StockPile({super.position}) : super(size: SolitaireGame.cardSize);
  @override
  bool get debugMode => true;

  final List<Card> _cards = [];

  void getCards(Card card) {
    assert(card.isFaceUp);
    card.position = position;
    card.priority = _cards.length;
    _cards.add(card);
  }
}
