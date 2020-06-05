// NULL Aware Operator:

class something {
  int number = 10;
}

void main () {
  var anotherNumber = something();
  int result = null;
  var yaya = 3 ;

  // instead of 
  // if (anotherNumber != null){
  //   anotherNumber.number;
  // } 
  // do this : 
  result = anotherNumber?.number; // ?  null or not? , ??  default value  , ??= permanent default value
  print(result);
  print(yaya??=20);

  // for loop from array:
  var arry = [1,2,3];
  arry.forEach((theAnything) => print(theAnything));
}