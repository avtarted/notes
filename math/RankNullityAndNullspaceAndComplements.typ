= Introduction
In this note(s), I will work with a matrix $A$ with $m$ rows and $n$ columns.
$A$ can be viewed as a function that maps a vector, $arrow(v)$, in $RR^n$ to $A arrow(v)$ in $RR^m$.
I have two, closely related, goals for this note concerning this matrix $A$.
The first is to prove the Rank Nullity Theorem, $N = op("Dim")(op("Range")(A)) + op("Dim")(op("Nullspace")(A))$.
And the second is to discus decomposing the domain of $A$ (viewed as a function), $RR^n$, 
as the direct sum of the nullspace of $A$ and any complementary subspace to it in $RR^n$.
Note that for the second goal, one such complementary subspace to the nullspace is the rowspace,
its orthogonal complement in $RR^n$.

= Poor Man's Method
When I ponder about the Rank Nullity Theorem, 
I often end up arriving at this constructive approach I've dubbed the Poor Man's Method.
In the next paragraph, I'll provide a high-level overview into this construction, 
and then I will explore an example to illustrate this idea more concretely.

Say the matrix $A$ I am working with has a rank of $k$, that is, $k = op("Dim")(op("Range")(A))$.
Then $k$ column vectors of $A$ form a basis for the range of $A$,
and the remaining $n - k$ column vectors are redundant.
Let me say that the first $k$ columns of $A$ are linearly independent and span the entire range of $A$.
My Poor Man's idea, then, is to manually create a basis for $RR^n$ with two classes of basis vectors
that correspond to the two classes of column vectors of $A$, the first $k$ columns and the rest.
The first class are $k$ standard-basis-like vectors that correspond to the first $k$ columns.
Particularly, where the $i$th such vector corresponds to the $i$th column vector 
in that the $i$th basis vector of $RR^n$ contains a $1$ at the $i$th entry and zeroes everywhere else.
Somewhat similarly, the second class are $n-k$ vectors that correspond to the last $n-k$ redundant columns.
Like the first class, a vector of this class has a $1$ corresponding to a given redundant column.
But rather than all other entries being zero, 
the top $k$ entries will have some non-zero entry(ies) that capture the redundancy of the corresponding column vector: 
so the column vector is redundant in that it can be expressed as a linear combination of the first $k$ columns with some weights 
and thus the top $k$ entries would be those same weights (but negative).
These $n-k$ second class basis vectors are in linearly independent and are all in the nullspace of $A$ by design, 
and the $k$ first class basis vectors are not in the nullspace of $A$ 
(that would violate the presumtion of the first $k$ columns of $A$ forming a linearly independent set-
read the Appendix if this is unclear).
Together these two classes of basis vectors are $n$ in number and form a linearly independent set, 
confirming their designation as a basis of $RR^n$, 
so it must be that the $n-k$ second class basis vectors form a basis for the nullspace of $A$ 
and thus the Rank Nullity Dimensions add up: $n = k + (n-k)$.

Let me start with two vectors, $arrow(a_1)$ and $arrow(a_2)$ in $RR^3$ 
that are non-zero vectors and are not scalar multiples of each other.
Then I can concatenate them to form the $3$ by $2$ matrix $A = mat(a_1, a_2)$.
The range of $A$ has a dimension of $2$ and visually, 
it is the plane that is $op("span")(arrow(a_1), arrow(a_2))$.
And the nullspace of $A$ is empty except for the trivial zero vector, 
so the dimension of the nullspace is $0$
(See the Appendix if you are not comfortable with this).
So Rank Nullity holds as $n = 2 = op("Dim")(op("Range")(A))$.


= The Proper Method


== Visual Remarks
You are an explorer in the world $RR^n$
Let me take the familiar case where I am working with a matrix $A$ with first two columns independent 
and the third column a linear combination of the first two.
The domain is thus $RR^3$, which you are exploring.
You are at some point in this domain.
If you traverse along the nullspace, so along $n$, that is an infinite line in a particular direction, you get no reward.
So you pick some direction $arrow(v_1)$ where $arrow(v_1)$ is a unit vector and you take one step in that direction.
You obtain the reward vector $A arrow(v_1)$.
You take $k$ steps and obtain the reward vector $k A arrow(v_1)$.
So this line you walk along maps to a line in the reward space, or the range of $A$.

You note that for some $k A arrow(v_1)$ reward, you can actually reach it in an infinite number of ways:
take $k$ steps along $arrow(v_1)$ and take any number of steps along $n$.
(Side remark: a key idea in proof, to me, is that taking steps through along the nullspace is not just a way, but in fact it is the only way to generate duplicate rewards).
So in fact now you have a plane, $op("span")(arrow(v_1), arrow(n))$, 
which you can traverse to get all rewards of the form, $k A arrow(v_1)$, or a line in the reward space.

This plane is 2-dimensional and you are in a 3-dimensional domain, 
and the reward space, or the range, is 2-dimensional but, 
confined to the exploring the input plane of $op("span")(arrow(v_1), arrow(n))$, 
you can only reach one dimension in the reward space, $A arrow(v_1)$, 
but you know there is one more dimension to the reward space you have not explored.
And you know there exists a direction that is outside the plane that you have not explored

So as an explorer who wants to explore, 
you repeat the procedure and take some unit vector direction, $arrow(v_2)$, that is outside this plane.
Before actually steping along this direction you ask yourself if this will let you get some, non-zero, reward 
that is outside $op("span")(A arrow(v_1))$?
Note that with this choice of $arrow(v_2)$, the set of vectors ${arrow(n), arrow(v_1), arrow(v_2)}$ form a basis for your input domain, $RR^3$.
Again, the reward space, or the range, is 2-dimensional and traversing the plane only takes you along one line in the reward space.
So there must exist some "interesting" direction you can take to get a reward outside of this line, 
or else the dimension of the range would be $1$ and not $2$.
Whatever this heretofore unexplored "interesting" direction must be, as ${arrow(n), arrow(v_1), arrow(v_2)}$ form a basis for all the directions you can explore,
this direction must be able to be represented as a linear combination of that basis or some (uninteresting) steps along the plane 
and some (interesting) steps along $arrow(v_2)$.
So $arrow(v_2)$ itself is an "interesting" direction as well, 
as traversing it must then let you reach a reward outside $op("span")(A arrow(v_1))$!

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
I intentionally set $arrow(a_1)$ to be on the x-axis, to show that $arrow(a_2)$ has some y-component "jutting out" that is orthogonal to the x-axis.
As $arrow(a_1)$ and $arrow(a_2)$ are two linearly independent vectors in $RR^2$, together they span all of $RR^2$.
So consider a general vector, $vec(x, y)$.
I want to show how it is uniquely specified by some vector $arrow(x) = vec(x_1, x_2)$ 
as weights for a linear combination of the $a_i$, 
so where $vec(x, y) = x_1 a_1 + x_2 a_2$.

Due to the choice of $arrow(a_1)$ being on the x-axis, this is quite easy.
I will need $x_2$ to be $y$ because only $a_2$ has a $y$ component.
Note that $x_2$ must be exactly $y$ because any more and this overshoots vertically, 
and there is no way by traversing any distance along $a_1$, the x-axis, horizontally to undo the overshooting.
Likewise, if $x_2$ is less than $y$, 
there is no way when strictly confined to movement along the x-axis to make up the deficit along the y-axis.
Plugging $x_2 = y$ into $vec(x, y) = x_1 a_1 + x_2 a_2$, 
$ vec(x, y) = x_1 a_1 + y vec(1 1) $
$ vec(x, y) = x_1 a_1 + vec(y y) $
$ vec(x - y, 0) = x_1 a_1 $
$ vec(x - y, 0) = x_1 vec(1, 0) $
$ vec(x - y, 0) = vec(x_1 , 0) $
$ x_1 = x - y $
That is, $x_2 = y$ accounts for the $y$ component, but $x_2$ of $a_2$ also contributes $y$ along the x-axis,
thus only $x - y$ contribution along the x-axis is needed so $x_1 = x - y$.

And all of this is forced.
Let me extend this to 3 dimensions.
Say I have a $arrow(a_1)$, $arrow(a_2)$, and $arrow(a_3)$ that form a linearly independent set 
where $arrow(a_1)$ and $arrow(a_2)$ lay on, and span, the x-y plane, 
and so $arrow(a_3)$ has some z-component that juts out.
This similarly forces $x_3$ to account for the z-component, 
and now I have reduced the problem to a subproblem but with 2 vectors, $arrow(a_1)$ and $arrow(a_2)$ and 2 weights, $x_1$ and $x_2$.

Back to the $RR^2$ case, where I have some $arrow(a_1)$ and $arrow(a_2)$ that span all of $RR^2$, but I want to be general.
Sure I could rotate the system and treat $arrow(a_1)$ as the x-axis.
But let me not and instead try to invoke classic "head to tail" vector addition.
Say I have the vector $x_1 arrow(a_1) + x_2 arrow(a_2)$ that is a linear combination of the basis with weights $vec(x_1, x_2)$.
I want to show that there cannot be a different vector, $vec(x_1^', x_2^')$ 
such that $x_1 arrow(a_1) + x_2 arrow(a_2) = x_1^' arrow(a_1) + x_2^' arrow(a_2)$.
As $vec(x_1, x_2) eq.not vec(x_1^', x_2^')$, at least one of the pairwise entries must be different.
Without loss of generality, say $x_1 eq.not x_1^'$.
And again, without loss of generality let $x_1 > x_1^'$ 
(if $x_1 < x_1^'$, swap the roles of $vec(x_1, x_2)$ and $vec(x_1^', x_2^')$).
Now $x_1 arrow(a_1) + x_2 arrow(a_2)$ can be viewed as 
$x_1$ units along the axis $a_1$ and then $x_2$ units along the $a_2$ axis.
That is using $vec(x_1, x_2)$ as weights.
But now consider $vec(x_1^', x_2^')$ as weights, where $x_1^' < x_1$ and $x_2^'$ is unknown.
First, move $x_1^'$ along the $a_1$ axis.
Observe that there is a deficit of $x_1 - x_1^'$ units along the $a_1$ axis.
The question is, what should $x_2^'$ be?
If I set to be $x_2$, the deficit remains unaccounted for.
No matter what, movement along the $a_2$ axis cannot account for the $x_1 - x_1^'$ unit deficit along the $a_1$ axis, 
because of the linear independence: $a_1$ is not on the $a_2$ axis.
Purely algebraically, rearrange $x_1 arrow(a_1) + x_2 arrow(a_2) = x_1^' arrow(a_1) + x_2^' arrow(a_2)$ 
to $(x_2^' - x_2) arrow(a_2) = (x_1 - x_1^') arrow(a_1)$
And by linear independence, I'm done, 
since no matter what $x_2^'$ is, movement along the $a_2$ axis cannot restore the deficit along the $a_1$ axis.
