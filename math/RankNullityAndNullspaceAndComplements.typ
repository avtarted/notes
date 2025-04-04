= Introduction
In this note(s), I will work with a matrix $A$ with $m$ rows and $n$ columns.
$A$ can be viewed as a function that maps a vector, $arrow(v)$, in $RR^n$ to $A arrow(v)$ in $RR^m$.
I have two, closely related, goals for this note concerning this matrix $A$.
The first is to prove the Rank Nullity Theorem, $N = op("Dim")(op("Range")(A)) + op("Dim")(op("Nullspace")(A))$.
And the second is to discus decomposing the domain of $A$ (viewed as a function), $RR^n$, 
as the direct sum of the nullspace of $A$ and any complementary subspace to it in $RR^n$.
Note that for the second goal, one such complementary subspace to the nullspace is the rowspace,
its orthogonal complement in $RR^n$.



Axler proof

Key idea: Redundancy and NullSpace
$A arrow(u) = A arrow(v) => A arrow(u) - A arrow(v) = arrow(0) => A (arrow(u) - arrow(v)) = 0$
Where last implication follows from linearity. 
So if $arrow(u) != arrow(v)$, I have found a non-trivial vector in the nullspace of $A$, $arrow(u) - arrow(v)$.


