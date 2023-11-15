#import "template.typ": *

#show: cornellnote.with(
  college: text(2em)[*University of ... or logo*],
  topic: [*Identities of Trigonometric Functions*],
  term: [*Fall 2023*],
  instructor: [*Dr. Math*]
)


= Introduction

#lorem(100)

= Methods
#lorem(100)


$ a + b = gamma $

+ Applying the half-angle formulas twice yields
  $ sin^4 (3 theta) = & (frac(1 - cos (6 theta), 2))^2\
  = & 1 / 4 (1 - 2 cos (6 theta) + cos^2 (6 theta))\
  = & 1 / 4 - 1 / 2 cos (6 theta) + 1 / 4 dot.op frac(1 + cos (12 theta), 2)\
  = & 3 / 8 - 1 / 2 cos (6 theta) + 1 / 8 cos (12 theta). $

  Note the power can also be reduced using product-to-sum identities.

+ We use product-to-power identities.
  $ &cos^2 (2 x) sin^2 x \
  = & (sin x cos (2 x))^2\
  = & (frac(sin (x + 2 x) + sin (x - 2 x), 2))^2\
  = & 1 / 4 (sin (3 x) - sin x)^2\
  = & 1 / 4 (sin (3 x) - sin x)^2\
  = & 1 / 4 (sin^2 (3 x) - 2 sin (3 x) sin x + sin^2 x)\
  = & 1 / 4 (frac(1 - cos (6 x), 2) - (cos (3 x - x) - cos (3 x + x)) + frac(1 - cos (2 x), 2))\
  = & 1 / 4 (1 - 3 / 2 cos (2 x) + cos (4 x) - 1 / 2 cos (6 x))\
  = & 1 / 4 - 3 / 8 cos (2 x) + 1 / 4 cos (4 x) - 1 / 8 cos (6 x). $
  
#lorem(100)]
