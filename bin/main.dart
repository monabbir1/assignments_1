main() async{
  print("Stared");
 await timer();
 print("End");
}
timer() async {
 await Future.delayed(Duration(seconds: 3),(){
    print("Run after 3 sec");
  });
}