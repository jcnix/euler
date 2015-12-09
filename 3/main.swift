import Glibc

let num = 600851475143

func is_prime(n: (Int)) -> Bool {
	var a = Int(sqrt(Double(n)))
	while a > 1 {
		if n % a == 0 {
			return false
		}
		a -= 1
	}
	return true
}

var n = Int(sqrt(Double(num)))
while n > 0 {
	if num % n == 0 {
		if is_prime(n) {
			print(n)
			break
		}
	}
	n -= 1
}
