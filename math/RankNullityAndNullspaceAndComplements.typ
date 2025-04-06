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

And if a set of vectors is not linearly independent, then it is linearly dependent. 
This means that there exists a nontrivial solution to $x_1 arrow(a_1) + x_2 arrow(a_2) + ... + x_n arrow(a_n) = arrow(0)$.
The upshot is of this is that at least one of the $a_i$ can be expressed as a linear combination of the remaining vectors.
To see this for a set of linearly independent vectors, consider the nontrivial solution, $arrow(x) = vec(x_1, x_2, dots.v, x_n)$.
At least one of the $x_i$ is not $0$ so from $x_1 arrow(a_1) + x_2 arrow(a_2) + ... + x_n arrow(a_n) = arrow(0)$,
$ x_i arrow(a_i) = sum_(j eq.not i) -x_j arrow(a_j) $
$ arrow(a_i) = sum_(j eq.not i) -(x_j/x_i) arrow(a_j) $




== Linear Independence And Uniqueness
Say I have 2 vectors $arrow(a_1)$ and $arrow(a_2)$ that are lineary independent.




Axler proof

Key idea: Redundancy and NullSpace
$A arrow(u) = A arrow(v) => A arrow(u) - A arrow(v) = arrow(0) => A (arrow(u) - arrow(v)) = 0$
Where last implication follows from linearity. 
So if $arrow(u) != arrow(v)$, I have found a non-trivial vector in the nullspace of $A$, $arrow(u) - arrow(v)$.


