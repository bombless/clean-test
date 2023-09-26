module app

import StdEnv

Start = "Hello, world!"



filterComment :: [Char] -> [Char]
filterComment ['%':xs] = untilCr xs
filterComment x        = x
where
    untilCr :: [Char] -> [Char]
    untilCr [] = []
    untilCr [x:xs]
        | x == '\n' = xs
        | otherwise = untilCr xs
