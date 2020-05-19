void main() {
  Person bob = Person(123, 'Sergey');
  print(bob.id.runtimeType);
  
  Person poll = Person('#123', 'Poll');
  print(poll.id.runtimeType);
  
  log('Ivan');
  
}

//<T> - универсальный параметр T
//после этого можем использовать универсальный тип T внтури метода
void log<T>(T a) {
  print('${DateTime.now()}; a = $a');
}
  
// класс Person типизирован типом T (универсальный параметр). 
// теперь мы можем использовать T как обычный тип внутри класса
class Person<T> {
  T id; //тип будет вычисляться автоматически на основе переданных данных
  String name;
  
  Person(this.id, this.name);
}

