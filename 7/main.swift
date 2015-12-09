import Glibc

func is_prime(n: Int) -> Bool {
	let a = Int(sqrt(Double(n)))
	for i in 2...a {
		if n % i == 0 {
			return false
		}
	}
	return true
}

// We'll skip 2 and 3 since they won't pass
// my is_prime() function.  We'll start with 5
var primes = 2

// Start at 3, then add 2 to get 5 (3rd prime number)
// during first iteration
var num = 3
while primes < 10001 {
	// Skip even numbers
	num += 2
	
	if is_prime(num) {
		primes += 1
	}
}

print(num)

