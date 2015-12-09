var num = 2520
var found = false

while !found {
//while mult == nil {
	var i = 20
	while i >= 1 {
		// If we get to 1, we have our answer
		if i == 1 {
			found = true
			print(num)
			break
		}
		if num % i != 0 {
			break
		}
		i -= 1
	}

	num += 1
}

