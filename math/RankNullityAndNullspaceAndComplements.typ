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
Observe that this upshot means that every vector in a linear independent set cannot be expressed as a linear combination of the other vectors.
Visually, it "juts out" of the span of the other vectors.

Another upshot is that the matrix $A$, again formed by concatenating the $a_i$, has a nontrivial nullspace.
Since $A arrow(x) = arrow(0)$ for a non-trivial $arrow(x)$, the nullspace of $A$ contains that non-zero $arrow(x)$ at the very least.
Moreover, the nullspace contains all scalar multiples of $arrow(x)$ as well, $op("span")(arrow(x))$ or $k arrow(x)$.
I can show this by taking the equation, $x_1 arrow(a_1) + x_2 arrow(a_2) + ... + x_n arrow(a_n) = arrow(0)$, 
and multiplying both sides by $k$ to get $k x_1 arrow(a_1) + k x_2 arrow(a_2) + ... + k x_n arrow(a_n) = arrow(0)$.
$k arrow(0) = arrow(0)$ and thus $k arrow(x)$ also satisfies the equation $A (k arrow(x)) = arrow(0)$.




== Linear Independence And Uniqueness
I will show that $A arrow(x) = arrow(b)$ has exactly one solution when the columns of $A$ form a linearly independent set.
If $arrow(b) = arrow(0)$, this is evident by the definition of linear independence,
as the solution is $arrow(x) = arrow(0)$.

Suppose for contradiction that $A arrow(x) = arrow(b)$ has two solutions, $arrow(u)$ and $arrow(v)$ where $arrow(u) eq.not arrow(v)$,
then: 
$ A arrow(u) = A arrow(v) => A arrow(u) - A arrow(v) = arrow(0) => A (arrow(u) - arrow(v)) = arrow(0) $
But this means I have found a non-trivial vector in the nullspace of $A$, $arrow(u) - arrow(v)$.
Which means the columns of $A$ did not form a linearly independent set to begin with.

Now this is a very terse proof that I would like to delve into a bit more and provide some visual intuition for.
This might get a bit intimidating, but I assure the reader that I will add concrete and simple examples to provide solid intuition.
So don't worry if this and the next paragraph are hard to immediately understand.
The key step to try to understand is, by linearity, $A arrow(u) - A arrow(v) = A (arrow(u) - arrow(v))$.
$arrow(u)$ and $arrow(v)$ are weights to the columns of $A$ and for a particular column, $a_i$, 
its weight will be the $i$th entry of $arrow(u)$ minus the $i$th entry of $arrow(v)$
Visually, $A arrow(u) - A arrow(v)$ is an offset vector
that, when added to $A arrow(v)$ using the "head to tail" vector addition method, restores the vector $A arrow(u)$.
Each column of $A$ visually, is an axis, 
and $A arrow(v)$ means start the $i$th entry units of $arrow(v)$ along the $a_i$ axis.
Then to get to $A arrow(u)$, along every axis $a_i$, 
I need to add the $i$th entry of $arrow(u)$ minus the $i$th entry of $arrow(v)$ units along $a_i$ to arrive at where $A arrow(u)$ rests along that axis.
And as this must be done over all the axes that are the columns of $A$, the offset vector is $A (arrow(u) - arrow(v))$.

And the approach is to set the offset equal to $arrow(0)$.
As $arrow(u) eq.not arrow(v)$, at least one of the entries of the offset vector, $A (arrow(u) - arrow(v))$, is non-zero.
Let's say the $i$th entry of the offset vector is non-zero.
So the offset to $A arrow(v)$, which must be $arrow(0)$, is some non-zero along $a_i$.
But this means for the offset to be $arrow(0)$, 
there must be contributions along the remaining axes that cancel out this non-zero contribution along $a_i$.
But this would imply that the axis $a_i$ is redundant and falls along the span of the other axes.

Now I can only visualize things in $2$ or at most $3$ dimensions. 
So, for a simple and concrete toy example, say I have two vectors in $RR^2$, $arrow(a_1)$ and $arrow(a_2)$, that are linearly independent.
Let $arrow(a_1) = vec(1, 0)$ and let $arrow(a_2) = vec(1, 1)$.
I intentionally set $arrow(a_1)$ to be on the x-axis, to show that $arrow(a_2)$ has some y-component "jutting out".
