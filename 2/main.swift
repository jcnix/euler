let four_million = 4000000

func fib() -> Int {
	var a = 0
	var b = 1
	var tmp = 0
	var sum = 0

	while a < four_million {
		tmp = a+b
		a = b
		b = tmp

		if a % 2 == 0 {
			sum += a
		}
	}
	
	return sum
}

let sum = fib()
print(sum)
