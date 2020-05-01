void main() {
  var list = ['a', 'ab', 'abc'];
  print(getSum(list));
}

var getSum = (list) {
  var sum = 0;
  if (list == []) {
    return sum;
  }
  list.forEach((el) {
    sum = sum + el.length;
  });

  return sum;
};
