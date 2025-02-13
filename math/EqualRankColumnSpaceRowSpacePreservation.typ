= Introduction
OK, so I want to explore something fundamental about matrices:

Why does the rank of the columnspace equal the rank of the rowspace?

I vageuly remember proofs involving row reduction, but those do not satisfy me as they involve this "machinery". 

"Machinery" remark: I remember reading Axler's Linear Algebra Done right proof of Rank Nullity theorem feeling so natural.
And I saw there was a footnote stating that this proof is more elegant than pivot column proofs using row reduction.

So I want a similar, direct proof. And I believe I've come up with some insight about something I'll dub "preservation".
Which ultimately is a very simple property of linearity which unsurprisingly, I say linear algebra comes down to.

TODO: note on intuition/lack of rigor/handwaviness...

== Rank 1 Matrices: Scaling Preserves Ratios
Consider the column vector $a_1 = vec(3, 4, 5)$.
This vector can denote the side lengths of your classic 3-4-5 right triangle.
Now scale it by some scalar, say 3. Then we have $a_2 = vec(9, 12, 15)$.
$a_2$ also has a geometric interpretation of a 3-4-5 right triangle except scaled by 3.
We also have the relation: $a_1 = 3*a_2$.
We can construct the matrix:
$ A = mat(a_1, a_2) = mat(3,9;4,12;5,15) $
Note that the rank of the columnspace of A is 1 as the column space is simply span{$a_1$}.
What's the rank of the row space? Well, also 1 as all the rows are scalar multiples of $vec(3,9)^T$
That is, the second row is 4/3 of it and the third row is 5/3 of it.
The key idea is that scaling $a_1$ by 3 preserves the ratios of its entries and this is at the heart of my article.
And geometrically, it makes sense, scaling the triangle does not change the ratios of the side lengths.

TODO: add bonus conditional probability definition as scaling and the ratios of the constituents of P(AandB) and P(notAandB)

== Establish (in R^3) properties of linearly independent vectors
This is a detour to establish a crucial result for the remaining section where I attempt to generalize the previous section.
I find along the way to prove this, I come across a key, fundamental concept of linear algebra which is wonderful to express simply on it's own right:
the relationship of linear dependence and redundancy mandating a non-trivial null space. For example back to the elegant Rank Nullity Theorem proof in Linear Algebra Done Right, 
this redundancy and null space connection is at the heart of that proof. 

3 linearly independent vectors in R^3 span entirely of R3. Intuition, first one span(a_1) line. Second one span(a_1, a_2) plane. Third one span(a_1, a_2, a_3) everything, all of R^3.
First one is a line. Second one and together (a_1, a_2) are lin indep so not on the same line so define a plane. And the third one not in the span(a_1, a_2) plane so we get R^3.
I know this is handwavy, so TODO express this better. Conclusion: these 3 vectors serve as a basis for R^3.

=== Unique Coordinate Representation of All Vectors Given Basis
Now to proceed to the key result.
Consider the equation $A*accent(x, arrow) = b forall b in RR^3$
$x$ denotes a linear combination of the vectors a_1, a_2, a_3 such that they result in $vec(b)$.
The key result is that not only does x always exist but that it is unique.
Let me reiterate, the key result is that, given any b in R^3, we can express it as a unique linear combination of a_1, a_2, a_3
where (a_1, a_2, a_3) are linearly independent vectors in R^3.




== Generalizing: Linear Combinations Preserving Linear Combinations
A = [a_1, a_2, a_3]. m by n matrix n = 3 and m >= 3. Let's assume this A abides by rank colspace = rank rowspace = 3
And for aesthetic reasons, let the first 3 rows of A be linearly independent and the rest of the rows below be linear combinations of the top 3 rows.




== The other direction
Transpose argument really. $A$ and $A^T$. I believe my work is essentially done in the previous section, but I'll opine further to further flesh it out.
So we've shown adding a vector a_4 that is a linear combination of a_1, a_2, a_3 forces no change in the row space, the non-top 3 rows stay redundant.
The question now is if this if then relationship is if and only if, that is, a_4 being linearly dependent is the only cause for no change in row space.
If so, they I'm done. (Why? If a_4 is independent/not a combination of a_1, a_2, a_3 then the rowspace gains a dimension to rank 4 because if it stayed rank 3 
there's contradiction on rank unchanged mandating a_4 being a combination of a_1, a_2, a_3 which is a contradiction.)

Again let me quickly restate the remaining objective. 
Appending the a_4 to A extends all the existing rows by 1. 
The top 3 rows will obviously remain independent (Why? Simple proof by contradiction on the initial 3 rows not being independent to begin with.)
But my aim now is to show that if the remaining lower rows remain the same linear combinations of the top 3, then this mandates a_4 to in turn, be a combination of a_1, a_2, a_3.

Recall my naming of the top 3 entries of $a_4$: $a_(4,1)$, $a_(4,2)$ $a_(4,3)$.
When I append a_4, note that the column vector $vec(a_(4,1),a_(4,2),a_(4,3))$ 
is uniquely expressed as a linear combination, $L_c$, of the 3 columns of the truncated matrix [a_1, a_2, a_3] where we only take the top 3 rows.
That is:
$ mat(a_(1,1), a_(2,1), a_(3,1);a_(1,2), a_(2,2), a_(3,2);a_(1,3), a_(2,3), a_(3,3)) * accent(x, arrow) = vec(a_(4,1),a_(4,2),a_(4,3)) $
where $accent(x, arrow)$ specifies $L_c$.


Now back to the full version of A, appended with a_4:
$ mat(a_(1,1), a_(2,1), a_(3,1), a_(4,1);a_(1,2), a_(2,2), a_(3,2), a_(4,2);a_(1,3), a_(2,3), a_(3,3), a_(4,3); dots.v, dots.v, dots.v, dots.v; a_(1,i), a_(2,i), a_(3,i), a_(4,i); dots.v, dots.v, dots.v, dots.v;  augment: #(hline: 3, vline: 3)) $
So the $i$th row is redundant, that is, it is some linear combination, $L_(r, i)$ of the first 3 rows. 
And this redundancy applies for all rows below the top 3 rows, but let me just consider this $i$th row.
The same concept from the prior section applies, and I can identially apply that to show that $a_(4,i)$ is the same linear combination of $a_(1,i), a_(2,i), a_(3,i)$ specified by $L_c$. Again, that is, $vec(a_(1,i), a_(2,i), a_(3,i))^T * accent(x, arrow) = a_(4,i)$.
And this can be done for all the redundant, non-top 3 rows. Thus, these redundant rows force $L_c$ to be respected for all $a_(4,i)$ and that forces $a_4$ to be a linear combination of $(a_1, a_2, a_,3)$ as specified by $L_c$.

And done, this essentially the same argument as the previous section except transposed. 




