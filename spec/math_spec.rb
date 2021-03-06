require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Math do

	it 'should solve quadratic formulas' do
		Math.quadratic(1, 2, 1).should == [-1.0, -1.0]
		Math.quadratic(1, 1, 0).should == [-1.0, 0.0]
		Math.quadratic(1, 0, 0).should == [0.0, 0.0]
		Math.quadratic(0, 1, 2).should == nil
		#Math.quadratic(1, 2, 3).should == 'change me'
		#Math.quadratic(-1, -2, -3).should == 'change me'
		#Math.quadratic(1, 1, 1).should == 'change me'
	end

	it 'should calculate permutations of n and k' do
		Math.permutations(10, 5).should == 30_240
		Math.permutations(5, 5).should == 120
		Math.permutations(5, 0).should == 1
		Math.permutations(0, 5).should == nil
		Math.permutations(0, 0).should == 1
		Math.permutations(5, 10).should == nil
		Math.permutations(-5, 5).should == nil
		Math.permutations(5, -5).should == nil
		Math.permutations(-5, -5).should == nil
	end

	it 'should calculate combinations of n and k' do
		Math.combinations(10, 5).should == 252
		Math.combinations(5, 10).should == nil
		Math.combinations(5, 5).should == 1
		Math.combinations(5, 0).should == 1
		Math.combinations(0, 5).should == nil
		Math.combinations(0, 0).should == 1
		Math.combinations(-5, 5).should == nil
		Math.combinations(5, -5).should == nil
		Math.combinations(-5, -5).should == nil
	end

	it 'should calculate the number of steps to finish the Collatz conjecture' do
		Math.collatz(-1).should == nil
		Math.collatz(0).should == nil
		Math.collatz(1).should == 0
		Math.collatz(2).should == 1
		Math.collatz(7).should == 16
		Math.collatz(100).should == 25
	end

	it 'should calculate the lengths of hypotenuses' do
		Math.hypotenuse(0, 0).should == 0
		Math.hypotenuse(Math.sqrt(5), 2).should == 3
		Math.hypotenuse(1, 1).should == Math.sqrt(2)
		Math.hypotenuse(5, -5).should be_nil
	end

	it 'should determine if given numbers form Pythagorean triplets' do
		Math.triplet?(3, 4, 5).should be_true
		Math.triplet?(5, 12, 13).should be_true
		Math.triplet?(7, 24, 25).should be_true
		Math.triplet?(8, 15, 17).should be_true
		Math.triplet?(4, 3, 5).should be_true
		Math.triplet?(5, 4, 3).should be_false
		Math.triplet?(0, 0, 0).should be_false
		Math.triplet?(Math.sqrt(5), 2, 3).should be_false
		Math.triplet?(1, 1, Math.sqrt(2)).should be_false
		Math.triplet?(-1, -1, -1).should be_false
	end

	it 'should calculate series of Fibonacci numbers of specified lengths' do
		Math.fibs(-1).should == nil
		Math.fibs(0).should == []
		Math.fibs(1).should == [1]
		Math.fibs(2).should == [1, 1]
		Math.fibs(5).should == [1, 1, 2, 3, 5]
		Math.fibs(10).should == [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
	end

end
