module MathExtensions

	def permutations(n, k)
		return n.factorial / (n-k).factorial
	end

	def combinations(n, k)
		return n.factorial / (k.factorial * (n-k).factorial)
	end

	def collatz(n, depth=0)
		depth += 1
		if n == 1
			return depth
		elsif n % 2 == 0
			return collatz(n/2, depth)
		else
			return collatz(3*n + 1, depth)
		end
	end

end
