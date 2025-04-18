#set math.equation(numbering: "(1)")

= Relation of Dot Product with Projection and some Pythagoream Theorem Proofs

== Prerequisites
High School level Geometry, Trigonometry, and Linear Algebra

== Introduction
My goal is to explore the relation between the dot product of two vectors and the projection of the vectors onto each other.
I will work with a heavily constrained case, the dot product of vectors that: 
are 2 dimensional (in $RR^2$) and are unit vectors, that is, they have a magnitude of 1.

== Problem Statement and Motivation
Let's say you are standing on an origin of a 2D coordinate plane. 
You may move a distance of $1$, that is, you may move to any point $P$ with coordinates $(x,y)$ on the unit circle. 
That is, $x^2 + y^2 = 1$ by the pythagorean theorem (which I will derive in multiple ways in this note)! 
That also is, $x=cos(theta)$ and $y=sin(theta)$ where $theta$ is the angle the vector from the origin to the point makes with the x-axis.
And you get a reward $R$ where $R(P) = R(x,y) = a*x + b*y$. For convenience, let's also have $a^2 + b^2 = 1$. 
And so what I am interested in is the dot-product of the two unit vectors: $vec(a,b) dot.op vec(x,y)$. 
Additionally, I am also interested in finding out what $vec(x,y)$ maximizes this dot-product. 
The answer turns out to always be $vec(x,y) = vec(a,b)$ and I'll show this geometrically by projection. 

So I "know" or rather, I want to prove:
$ a dot.op b = bar.v a bar.v * bar.v b bar.v * cos(theta) $
But since I am dealing with unit vectors: 
$ a dot.op b = cos(theta) $ <problem>
For two unit vectors, $bar.v cos(theta) bar.v$ is the magnitude of the projection of either vector onto the other. 
For this note, I'll focus on the $vec(a,b)$ as the vector I am projecting the vector $vec(x,y)$ onto. 
And I know that the maximum value of $cos(theta)$ is $1$ when $theta=0$ or when $vec(x,y) = vec(a,b)$.

To reiterate, my goal is to prove @problem, 
or equivalently, that $|a dot.op b|$ is the magnitude of the projection of $vec(x,y)$ onto $vec(a,b)$.


