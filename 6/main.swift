#if os(Linux)
	import Glibc
#else
	import Darwin
#endif

// Sum of Squares

var sum_sq = 0
for i in 1...100 {
	sum_sq += Int(pow(Double(i), 2))
}

// Square of Sums

var sq_sum = 0
for i in 1...100 {
	sq_sum += i
}
sq_sum = Int(pow(Double(sq_sum), 2))

var diff = sq_sum - sum_sq
print(diff)

