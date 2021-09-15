function find_total( my_numbers ) {
    var total = 0;

    for (i=0;i<my_numbers.length;i++)
       {
        if(my_numbers[i]%2==0){
          total = total + 1; }
          if(my_numbers[i]%2 !=0 && my_numbers[i] !=5) {
          total = total + 3
          }
          else if (my_numbers[i]==5){
          total = total + 5;
          }
       } 
       console.log(total);
}
var numbers = new Array(17,19,21);
find_total( numbers );