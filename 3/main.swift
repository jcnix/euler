import Glibc

let num = 600851475143

func is_prime(n: (Int)) -> Bool {
	let a = Int(sqrt(Double(n)))
	for i in 2...a {
		if n % i == 0 {
			return false
		}
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

