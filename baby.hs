doubleMe x = x + x

doubleUs x y = x * 2 + y * 2

doubleUs' x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x < 100
                           then x * 2
                           else x


--head []
--

length' xs = sum [ 1 | _ <- xs ]

rightTriangle = [(a, b, c) | c <- [1..10], b <- [1..c], a <- [1..b], a + b + c == 24, a * a + b * b == c * c ]
