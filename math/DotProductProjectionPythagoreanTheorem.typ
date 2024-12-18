#set math.equation(numbering: "(1)")

= Relation of Dot Product with Projection and some Pythagoream Theorem Proofs

== Prerequisites
High School level Geometry, Trigonometry, and Linear Algebra

== Introduction
My goal is to explore the relation between the dot product of two vectors and the projection of the vectors onto each other.
I will work with a heavily constrained case, the dot product of vectors that: 
are 2 dimensional (in $RR^2$) and are unit vectors, that is, they have a magnitude of 1.

== Problem Motivation
Let's say you are standing on an origin of a 2D coordinate plane. 
You may move a distance of $1$, that is, you may move to any point $P$ with coordinates $(x,y)$ on the unit circle. 
That is, $x^2 + y^2 = 1$ by the pythagorean theorem (which I will derive in multiple ways in this note)! 
That also is, $x=cos(theta)$ and $y=sin(theta)$ where $theta$ is the angle the vector from the origin to the point makes with the x-axis.
And you get a reward $R$ where $R(P) = R(x,y) = a*x + b*y$. For convenience, let's also have $a^2 + b^2 = 1$. 
And so what I am interested in is the dot-product of the two unit vectors: $vec(a,b) dot.op vec(x,y)$



