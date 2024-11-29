void main() {

  int number = 10;
  double result = 5.5;
  String text = "Point ";
  
  number = number ~/ 3 + (++number % 4);
  // Zeitpunkt 1
  print('Z1: $result $number $text');
  
  text += number.toString();
  result *= number;
  // Zeitpunkt 2
  print('Z2: $result $number $text');
  
  number = (result ~/ 10 + number++) % 7;
  // Zeitpunkt 3
  print('Z3: $result $number $text');

//#############################
//### 2. Aufgabe
//#############################

  int seatsPerRow = 12;
  int seatNumber = 49;
  int ticketPrice = seatNumber%2 == 0 ? 12 : 15;
  int dieReihe = (seatNumber ~/seatsPerRow);
  if (seatNumber%seatsPerRow !=0 ) dieReihe++;

  bool isFound = false;
  int currentSeatNumber = 0;
  int currentRow = 0 ;
  while (!isFound) {
    for (var i = 0; i < seatsPerRow; i++) {
      currentSeatNumber++; 
      if(currentSeatNumber >= seatNumber) isFound = true;
    }  
    currentRow++;
  }
  print('Ticket-Info');
  print('Reihe: $currentRow');
  print('Platz: $seatNumber');
  print('Preis: $ticketPrice');
  print('Andere Reihenlösung: $dieReihe');
}
