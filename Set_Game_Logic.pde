boolean allSame(int a, int b, int c) {
  // YOU WRITE THIS
  return  (a == b) && (b == c) && (a == c);
}

boolean allDifferent(int a, int b, int c) {
  // YOU WRITE THIS
  return  (a != b) && (b != c) && (a != c);
}

boolean sameColor(Card a, Card b, Card c) {
  // YOU WRITE THIS
  
  int aCol = a.getCol() / 3;
  int bCol = b.getCol() / 3;
  int cCol = c.getCol() / 3;

  return allSame(aCol, bCol, cCol);  
}

boolean sameShape(Card a, Card b, Card c) {
  // YOU WRITE THIS
  
  int card1 = a.getCol() % 3;
  int card2 = b.getCol() % 3;
  int card3 = c.getCol() % 3;
  
  return allSame(card1, card2, card3);
}

boolean sameFill(Card a, Card b, Card c) {
  // YOU WRITE THIS
  
  int aRow = a.getRow() / 3;
  int bRow = b.getRow() / 3;
  int cRow = c.getRow() / 3;

  return allSame(aRow, bRow, cRow);
}

boolean sameCount(Card a, Card b, Card c) {
  // YOU WRITE THIS
  
  int card1 = a.getRow() % 3;
  int card2 = b.getRow() % 3;
  int card3 = c.getRow() % 3;
  
  return allSame(card1, card2, card3);
}

boolean diffColor(Card a, Card b, Card c) {
  // YOU WRITE THIS
  
  int aCol = a.getCol() / 3;
  int bCol = b.getCol() / 3;
  int cCol = c.getCol() / 3;

  return allDifferent(aCol, bCol, cCol);
}

boolean diffShape(Card a, Card b, Card c) {
  // YOU WRITE THIS
  
  int card1 = a.getCol() % 3;
  int card2 = b.getCol() % 3;
  int card3 = c.getCol() % 3;
  
  return allDifferent(card1, card2, card3);
}

boolean diffFill(Card a, Card b, Card c) {
  // YOU WRITE THIS
  
  int aRow = a.getRow() / 3;
  int bRow = b.getRow() / 3;
  int cRow = c.getRow() / 3;

  return allDifferent(aRow, bRow, cRow);
}

boolean diffCount(Card a, Card b, Card c) {
  // YOU WRITE THIS
  
  int aRow = a.getRow() % 3;
  int bRow = b.getRow() % 3;
  int cRow = c.getRow() % 3;

  return allDifferent(aRow, bRow, cRow);
}  

boolean isSet(Card a, Card b, Card c) {
  // YOU WRITE THIS
    return (sameColor(a, b, c) || diffColor(a, b, c)) && 
         (sameShape(a, b, c) || diffShape(a, b, c)) && 
         (sameFill(a, b, c) || diffFill(a, b, c)) && 
         (sameCount(a, b, c) || diffCount(a, b, c));
}
