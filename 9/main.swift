import Glibc

/* We are using Euclid's formula for finding
 * Pythagorean triplets.
 *
 * In Euclid's formula c = m^2 + n^2
 * m and n are arbitrary integers where m > n
 * since a+b+c must be equal to 1000, m^2 + n^2
 * cannot be greater than 1000.
 *
 * Therefore m cannot be greater than 100, so
 * we only need to iterate m up to 100, and n
 * through m-1
 */

for m in 2...100 {
	//We don't need to recalculate m^2 for each iteration of n
	let m2 = Int(pow(Double(m), 2))
	for n in 1...m-1 {
		let n2 = Int(pow(Double(n), 2))
		let a = m2 - n2
		let b = 2 * m * n
		let c = m2 + n2

		if a + b + c == 1000 {
			print("a=\(a) b=\(b) c=\(c)")
			let ans = a * b * c
			print(ans)
			break
		}
	}
}

