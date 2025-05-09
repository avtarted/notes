
= Inverses
I am going to review a few fundamental properties of inverses of functions.
First, a way to think about them.
Next, a way to compute them.
A geometric interpretation of them as a reflection about the line $y = x$ and derive this.

And wrap it off with the computing derivative of inverse function.

= Audience
This is targeted at, or at least assumes, basic precalculus understanding and the optional ending section differential

= Motivation, Definition, Computation
Say I have a function, $f$ , of  $x$. 
$f$ takes in $x$ and produces $f(x)$.
So for the function, $f$, I have this pair $(x, f(x))$.
Todo draw picture of $x$ and an arrow over a box, $f$, that points to $f(x)$.
Now the inverse reverses the direction of the arrow and completes a loop.
So for the inverse function, $f^-1$, I have this pair $(f(x), x)$.
Given $f(x)$ as the input, it outputs $x$.
Note the swapping.
I have heard the terms 'image' and 'preimage':$f(x)$ is the image, and $x$ is the preimage.
And functions take in preimages and return their images.
Inverses then take in images and return the preimages whose image is in the input image.

There is some relation between $x$ and $f(x)$ that the function $f$ defines.
Now the inverse is not some magical, and especially some new relation I pulled out of thin air.
Rather, it is but the exact same relation $f$ at play except with this idea of swapping: 
$f$ applied to the output of the inverse function $f^-1$ yields the input of the inverse function.
Whereas for the original function, $f$, $f$ applied to its input yields its output.

Computation: Swapping
Simply switch $x$ and $y$ to compute the inverse function.

= Derivative of inverses
I will motivate this identity:
$ diff(f^(-1))/(diff x) = 1/((diff f)/(diff x) | x = f^(-1)(x)) $

Let me start by considering the functions $f(x) = x^n$ and its inverse $f^(-1)(x) = x^(1/n)$.
For $f$, assuming the input is significantly greater than $1$, 
a small change to the input is associated with a large change to the output.
The exact relation quantifying the ratio of the changes in output to input is given by the power rule of differentiation.

And I want to say something like 
"a small change to the output of $f^(-1)$ is associated with a large change of the input of $f^(-1)$".

Let me actually define two points on $f$: $(x, f(x))$ and $(x + Delta x, f(x + Delta x))$.
$Delta y = f(x + Delta x) - f(x)$ and $(Delta y) = k * Delta x$ 
where $k$ is some large scaling factor that, for a very small $Delta x$, is the derivative at $x$, $k approx n*x^(n-1)$.
$(Delta y)/(Delta x) = k approx (diff y)/(diff x) | x = x$.
Again, $Delta x$ and $Delta y$ are both very small, in fact as $Delta x arrow.r 0$, $Delta y arrow.r 0$.
So both these points are very close together on the graph of $f$.

Thus now I have, for free, information on two close together points on the graph of $f^(-1)$, 
the points $(f(x), x)$ and $(f(x + Delta x), (x + Delta x))$.
The difference quotient that these two points specify, which approxmiates the derivative of $f^(-1)$ at $f(x)$, 
is then $1/k$ as the "rise" and "run" get swapped.
$(Delta "rise")/(Delta "run") = (Delta x)/(f(x + Delta x) - f(x)) = 1/k$.
Thus I have demonstrated the reciprical nature of the derivatives of $f$ and $f^(-1)$.

The remaining detail is, for the derivative of $f^(-1)$, where the involved derivatives are specified at.
Consider the pair that is a point on $f^(-1)$, (x, y).
The roles of '$x$' and '$y$', are swapped as they are traditionally used in the context of $f$: $f^(-1)(x) = y$ where $f(y) = x$.
So $f^(-1)'(x) = 1/(f'(y)) = 1/(f'(f^(-1)(x)))$.

Just for fun, let me also get this result via implicit differentiation.


TODO and implicit differentiation same idea y = x^n. x = y^n. 
Again seeing swapping at play. The input x, has corresponding y such that y^n = x. 
And in this relation, the derivative nature of the variables are swapped. 
Small x delta induces large y delta in original fn.
But in the inverse, small y associated with large x change as x = y^n shows.
Already notions of their derivaties being recriprocals of each other are suggestive to me.
