// Higher-order function that applies a given function to each element in a list
def applyFunctionToList(list: List[Int], func: Int => Int): List[Int] = {
  list.map(func)
}

val numbers = List(1, 2, 3, 4, 5)
val squaredNumbers = applyFunctionToList(numbers, x => x * x)

println(Nature)  // Nature: List(1, 4, 9, 16, 25)
