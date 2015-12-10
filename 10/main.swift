import Glibc

func is_prime(n: (Int)) -> Bool {
	let a = Int(sqrt(Double(n)))
	for i in 2...a {
		if n % i == 0 {
			return false
		}
	}
	return true
}

let two_mil = 2000000
var i = 5
var sum = 5 // 2 + 3
while i < two_mil {
	if(is_prime(i)) {
		sum += i
	}

	//odd numbers only
	i += 2
}

print(sum)
