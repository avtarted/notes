= Introduction
In this note(s), I will work with a matrix $A$ with $m$ rows and $n$ columns.
$A$ can be viewed as a function that maps a vector, $arrow(v)$, in $RR^n$ to $A arrow(v)$ in $RR^m$.
I have two, closely related, goals for this note concerning this matrix $A$.
The first is to prove the Rank Nullity Theorem, $N = op("Dim")(op("Range")(A)) + op("Dim")(op("Nullspace")(A))$.
And the second is to discus decomposing the domain of $A$ (viewed as a function), $RR^n$, 
as the direct sum of the nullspace of $A$ and any complementary subspace to it in $RR^n$.
Note that for the second goal, one such complementary subspace to the nullspace is the rowspace,
its orthogonal complement in $RR^n$.



= Appendix: Linear Independence, Dependence, Redundancy, Nullspace
Let me start by reviewing the definition(s) of linear independence and dependence.

A set of vectors ${a_1, a_2, ..., a_n}$ is linearly independent 
if the only way to form the zero vector, $arrow(0)$, by taking a linear combination of the them
is when all the weights are $0$.
That is, $x_1 arrow(a_1) + x_2 arrow(a_2) + ... + x_n arrow(a_n) = arrow(0)$ only when all the $x_i$ are themselves $0$.
All the $x_i$ being $0$ is known as the trivial solution to this equation.
Note, the above equation can be written in matrix form as $A arrow(x) = arrow(0)$
where $A = mat(a_1, a_2, ..., a_n)$ and $arrow(x) = vec(x_1, x_2, dots.v, x_n)$.
Then, if the only solution to this equation is $x = arrow(0)$, ${a_1, a_2, ..., a_n}$ is linearly independent.
And matrix $A$ has a trivial nullspace only containing the zero vector.

And if a set of vectors is not linearly independent, then it is linearly dependent. 
This means that there exists a nontrivial solution to $x_1 arrow(a_1) + x_2 arrow(a_2) + ... + x_n arrow(a_n) = arrow(0)$.

An upshot is of this is that at least one of the $a_i$ can be expressed as a linear combination of the remaining vectors.
To see this for a set of linearly independent vectors, consider the nontrivial solution, $arrow(x) = vec(x_1, x_2, dots.v, x_n)$.
At least one of the $x_i$ is not $0$ so from $x_1 arrow(a_1) + x_2 arrow(a_2) + ... + x_n arrow(a_n) = arrow(0)$,
$ x_i arrow(a_i) = sum_(j eq.not i) -x_j arrow(a_j) $
$ arrow(a_i) = sum_(j eq.not i) -(x_j/x_i) arrow(a_j) $

Another upshot is that the matrix $A$, again formed by concatenating the $a_i$, has a nontrivial nullspace.
Since $A arrow(x) = arrow(0)$ for a non-trivial $arrow(x)$, the nullspace of $A$ contains that non-zero $arrow(x)$ at the very least.
Moreover, the nullspace contains all scalar multiples of $arrow(x)$ as well, $op("span")(arrow(x))$ or $k arrow(x)$.
I can show this by taking the equation, $x_1 arrow(a_1) + x_2 arrow(a_2) + ... + x_n arrow(a_n) = arrow(0)$, 
and multiplying both sides by $k$ to get $k x_1 arrow(a_1) + k x_2 arrow(a_2) + ... + k x_n arrow(a_n) = arrow(0)$.
$k arrow(0) = arrow(0)$ and thus $k arrow(x)$ also satisfies the equation $A (k arrow(x)) = arrow(0)$.




== Linear Independence And Uniqueness
Say I have 2 vectors $arrow(a_1)$ and $arrow(a_2)$ that are linearly independent.
Then I will show that $A arrow(x) = arrow(b)$ has exactly one solution.
If $arrow(b) = arrow(0)$, this is evident by the definition of linear independence,
as the solution is $arrow(x) = arrow(0)$.

Suppose for contradiction that $A arrow(x) = arrow(b)$ has two solutions, $arrow(u)$ and $arrow(v)$ where $arrow(u) eq.not arrow(v)$,
then: 
$ A arrow(u) = A arrow(v) => A arrow(u) - A arrow(v) = arrow(0) => A (arrow(u) - arrow(v)) = 0 $
But this means 




Axler proof

Key idea: Redundancy and NullSpace
Where last implication follows from linearity. 
So if $arrow(u) != arrow(v)$, I have found a non-trivial vector in the nullspace of $A$, $arrow(u) - arrow(v)$.


