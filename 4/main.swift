var a = 999
var b = 999
var n = 0

func is_palindrome(n: Int) -> Bool {
	let s = String(n).characters.map { String($0) }
	let l = s.count - 1
	var i = 0
	while i <= l / 2 {
		if s[i] != s[l - i] {
			return false
		}
		i += 1
	}
	return true
}

var largest = 0
while a > 1 {
	while b > 1 {
		n = a * b
		if is_palindrome(n) {
			if n > largest {
				largest = n
			}
		}
		b -= 1
	}

	a -= 1
	b = a
}

print(largest)
