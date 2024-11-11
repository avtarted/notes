#set math.equation(numbering: "(1)")
#let avg = $op("avg")$

= Expectation, Average, and Center of Mass

== Introduction
My goal is to explore what the term "expectation" means in probability.
I'll start off with computing averages of discrete lists of numbers
And use these averages to motivate a proposed definition of, and the computation of, an expectation.
Finally, I'll derive why the expectation can be viewed as the center of mass of a discrete probability distribution.
Everything will be done using discrete, non-continuous, examples.

== Averages and Expectation
I'll start of with increasingly complex calculations of averages and showcase varying interpretations to understand them.
I'll motivate expectations as a weighted average and connect the work to uniform and non-uniform discrete probability.

=== Average of Two Numbers: Split the Distance
Let's start off with the simplest case of a meaningful average, the average of two numbers, $A$ and $B$.
For now, let us assume that $A$ and $B$ are distinct integers and also that $B > A$. Let's set $A=1$ and $B=2$.
Let's recall how we compute the average of a discrete list of numbers $(a_1, a_2,...,a_n)$:
$ avg((a_1, a_2,...,a_n)) = 1/N*sum_(i=0)^n a_i $ <avg>
Note, we can also push the 1/N inside the summation as follows:
$ avg((a_1, a_2,...,a_n)) = sum_(i=0)^n a_i/N $ <avg2>

This suggests that each constituent number, a_i, has a uniform "weight" of 1/N, 
and clarifies it's contribution to the final average is a_i/N.

From @avg, it follows that
$ avg((A,B)) = (A+B)/2 $ <avg2num1>
So we can compute $avg((1,2))=(1+2)/2=1.5$.

There is another way to compute this average that I will dive into:
$ avg((A,B)) = A + (B-A)/2 $ <avg2num2>
Indeed, this seems to check out: $avg((1,2))=1+(2-1)/2=1.5$.

CS aside: This is the approach that I use, like most coders, to implement binary seach: ``` a + ((b-a)>>1)```.
Where `a` and `b` are the start and end indices, respectively, of the window we are binary searching on (and where ```>>1``` is a bit shift accomplishing halving).
The reason coders prefer this approach to adding `a` and `b` and then dividing by `2` is because the addition may trigger an overflow.

Two questions arise: why does this work, and why bother doing it this way assuming I don't care about binary representation overflows.
I'll answer them in order.

Visually, this method can be viewed as splitting the distance, that is, the difference between $A$ and $B$.
Let $K$ be this distance, that is $K=B-A$. 
Then we can rewrite our list $(A,B) = (A, A+K)$
TODO: add a picture

=== Viewing and Generalizing Splitting the Difference as a Problem Transformation
I would like to preface this section by stating that it is semi-optional, but I would recommend looking it over.

Say we have (A,B,C) where C > B > A
How solve this. Back to (A, B) case where I view B = A + K
then I am essentially doing a translation shift by A: $avg(A, B) = A + avg(0,B-A) = A + avg(0,K) = A + 1/2 * K$
TODO insert histogram with two bars
Let's say I have a discrete list with all unique numbers, then I can generalize this.
Idea is I can extract out the lowest number and zero it out, so the list has 1 less unique number, but all the remaining numbers have the lowest subtracted from it.
That is:
$ avg(a_1,a_2,...a_n) = a_1 + avg(0, a_2-a_1,...,a_n-a_1) $
But, including 0, we still have N numbers, we want to have N-1 numbers
I believe the general solution, the desired recursive formulation, is simply:
$ avg(a_1,a_2,...a_n) = a_1 + (n-1)/n * avg(a_2,...,a_n) $

Aside: Where does (n-1)/n come from? Well from @avg and the first term being 0, we have
$ avg(0, a_2-a_1,...,a_n-a_1) = 1/N * sum_(i=2)^n (a_i-a_0) $
But rearranging @avg, we can express the previous RHS's summation in turn as an average:
$ sum_(i=2)^n (a_i-a_0)= avg(a_2-a_0,...,a_n-a_0)*(N-1) $
And plugging this back in yields the desired (N-1)/N

Let's test this problem transformation to our (A,B,C) case?
$ avg(A,B,C) = A + 2/3 * avg(B,C) $
Let me work this out with $(1,2,3)$ which I clearly know must be 2.
Indeed, expanding it all out, the math checks out $1 + 2/3*(1+1/2) = 2$

So from a problem of size 3 we transform it to a problem of size 2.
More generally I can now transform a problem of size N to one of size N-1, so I've got that going for me. Which isn't that nice  and supremely inefficient compared to simply @avg.
This splitting difference interpretation seems to be unyieldy past 2 numbers and I'll introduce a different interpretation shortly, that is cleaner and connects to center of mass or 'centrality'.
But to motivate that, let's go back to a special case 2 numbers, and to also hint at probability.

=== Weighted Average of Two Numbers
Now let me upgrade (A,B) to (A,A,B).
A has a "weight", twice that of the "weight" of B.
A's weight is 2/3 and B's weight is 1/3.

Following in my previous "in-terms-of-lowest-number" footsteps, rewrite this as (A,A,A+K)
So the average is then the sum divided by 3 which is (3A+K)/3 or AandK/3. So it's like we're splitting the distance by 3. 

Note, like last section, that this is not fun to generalize to more than two distinct numbers, say (A,B,C). So I'll change perpective.

=== Solution: Symmetry About Center
From last example of (1,1,2) no coincidence where the average was. the distance from 1 and 1/3 to 1 vs to 2 those distances relate to multiplicity of 1 being twice and 2 once.
Let's explore this from the perspective of the center.
In past we took the lowest number and viewed the rest as offsets past that.
But now and henceforth, instead of (A, A, A+K) lets view it as (M-D1, M-D1, M+D2)
where D_i are the absolute difference of the ith number from M, abs(a_i - M)
and where M is the average (M for mean). (M-(M-A), M-(M-A), M + (B-M))

=== Expectation of Weighted Coin Flip
I'll recyle the (A,B) and (A,A,B) cases to motivate expectation. I'll continue to keep A = 1 and B = 2.
Flip heads get A, flip tails, get B both equally likely in the (A,B) case
But for the (A,A,B) case we have P(heads) = 2/3 and P(tails) = 1/3. So 'weights' come into play.

I'll actually take a step back first and examine (A,0) and (0,B) cases. I want to isolate the impact of each individual outcome
(A,0) case first, Say both outcomes heads or tails are equally likely. If we flip heads we get A reward but if we flip tails we get 0 reward.
If we were to do like 1000 coin flips, we'd expect 500 heads. Our reward would be $500*A$.
If we do 2000, we'd expect 1000 heads. Our reward would be $1000*A$.
As we can see, it scales linearly. But flip once, it's like some quantum/schrodinger value of being half of a head so we reap half the reward. 
That is our expected reward is A/2. Same for (0,B) case, B/2. And we can add them when thinking about (A, B) case. Isn't linearity great?
Back to (A,B) say 1000 tosses, 500heads 500tails produce reward of $500*A + 500*B$ and scale down to 1 toss, expected profit is A/2 + B/2
Which is the average of (A,B)
We can do this for (A,A,B) now ~667 heads, ~333 tails scaled down to 1 toss, expected profit is $2/3 * A + 1/3 * B$
Which is why expectated outcome of our random variable, the reward we get doing a single coin flip, is the average reward we expect it to take on.
The probabilities of each outcome are the weights.

=== Center of Mass, Discrete and 1D
I would be done, but the reason I wrote this note is because I read CS70 note relating expectation to center of mass of probability distribution
Wanted to explore it and I was pleased. So I'll start with a detour

Again, consequence of linearity.

