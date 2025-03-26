= Introduction

I will start by 'deriving' the limit formula defining the constant $e$ as $lim_{n -> infinity} (1 + 1/n)^n$ 
with the motivation being finding a base, $b$, such that the function $b^x$ is its own derivative. 
Then I will attempt to generalize this for positive and negative powers of $e$.

Throughout this article, I will try to describe my thought process behind every step.
As such, obvious disclaimer: I aim to be very intutive and beginner-friendly, 
and I do not pretend to be rigorous.

= Shrinking Step Sizes








= Appendix: Exponentiation Basics
I'll explore basics of exponentiation here using integers and motivate some properties of exponents, especially the property: $(b^(k))^x = b^(k*x)$.
Firstly, what does $b^x$ mean? $b^x$ evaluates to $overbrace(b*b*...*b, "x times")$.

Symbolically, this is a product of $x$ factors of $b$. Visually, I like to use trees that with branching factor $b$.
For example, below shows a complete binary tree to represent $2^h$, the case where $b=2$.

TODO draw complete binary tree, a "2-Tree" here

The levels of these trees are 0-indexed, meaning at the 0th level, there is 1 node (the root), 
at the 1st level, there are $b$ nodes, at the second level, there are $b*b$ nodes.
Each successive level introduces another factor of $b$, 
since every node at the previous level splits into $b$ more nodes. 
1 node introduces $b$ child nodes, 2 nodes introduce $2*b$ nodes, all $k$ nodes introduce $k*b$ children.
Thus, at some level, $l$, there are $b^l$ nodes, 
and the relation between successive levels is: $b^(l+1) = b^l*b$.
And this relation naturally extends to $b^(l+k) = b^l*b^k$, that is, 
adding $k$ to the exponent introduces $k$ more factors of $b$ that act on $b^l$.

== Different bases
Let me add another base for consideration: 8^x. Below are 2 trees side-by-side that terminate with 64 leaves.

TODO draw these trees and make them line up, so distance between levels of the 8^x would be ~3x that of 2^x tree

Observe that these two trees are quite closely related. 
Let me state the relation exactly as follows: 
every 3 levels of doubling for the 2-Tree produces the same effect of a single level of the 8-Tree.

So the 8-Tree is a 'compressed' version of the 2-Tree, by a factor of 3, based on the following equivalancy.

TODO draw another side by side picture of 3 levels of the 2-Tree and 1 level of the 8-tree, again lined up

Because $8=2^3=2*2*2$, 3 levels of doubling results in 1 level of multiplying by 8.

Let $h$ be the height of the tree where if the lowest, leaf, level is indexed at $l$, $h = l - 1$.
So the $8^h$ tree has $8^h$ leaves. When $h=1$, there are $8$ leaves. And when $h=2$, there are $64$ leaves.
Now for the $2^h$ tree, when $h=3$ there at $8$ leaves. And when $h=6$, there are $64$ leaves.
So, more generally, this shows that $8^h = 2^(3*h)$. 
But $8=2^3$, so $8^h = (2^3)^h$, and this proves $(2^3)^h = 2^(3*h)$
Note that this is only for integer values of $h$.
I will, very soon, motivate this for rational powers as well.

Finally, and this is, I suspect how most people including myself learned exponents, 
I can readily see all this when writing out factors: $8^2 = (8)*(8) = (2*2*2)*(2*2*2) = 2^6$.
The number of factors is $h$, the argument of $f(h) = b^h$ 
and it is evident that the number of factors in the 8-expansion gets multiplied by 3 to get the number of factors in the 2-expansion.
Like it takes $2$ $8$'s to write out 64 but it takes $6=2*3$ $2$'s to write out 64 using factors of all $2$'s.
(If you are familiar with hexademical and binary numberings a similar compression by a factor of 4 happens 
where every hexadecimal digit valued from 0-15 can be converted into 4 binary digits)

OK, but what about instead of multiplying by 3, dividing by 3.
Consider $8^(1/3)$. For the function $f(h) = 8^h$, the input $h$ is the height.
But a fractional height doesn't make sense? 
But if use the relation I just derived, 
where every 1 level of the 8-Tree is equivalent to 3 levels of 2-Tree, every 2 levels of the 8-Tree is equivalent to 6 levels of the 2-Tree,
it follows that 1/3 level of the 8-Tree is equivalent to 1 level of the 2-Tree.
That is, I'm assuming the ratio of 1 level 8-Tree : 3 levels 2-Tree,
$ X "8-level" = X cancel("8-level")* ((3 "2-level") / (1 * cancel("8-level"))) = 3X "2-level" $
or, equivalently, 
$ X "2-level" = X cancel("2-level")* ((1 "8-level") / (3 * cancel("2-level"))) = (1/3)X "8-level" $
And so $8^1/3 = 2$ and more generally, $b^(1/k)=x$ where $x^k=b$.
And symbollically, this is readily displayed by $(b^(1/k))^k = b$.


