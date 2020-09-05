{-# LANGUAGE EmptyCase #-}
data Answer = 
    Digit Int
  | SingleWord String


{----------------------------------------------}
{--------------- EXACT MATCH ------------------}
{----------------------------------------------}
-- exactMatch :: String -> [String] -> Maybe String


{----------- Here goes your code --------------}


--   map (\x -> if x == word then ) words xs
containedInSentence :: String -> [String] -> Bool
containedInSentence a [] = False
containedInSentence a  (x:xs)
    | a == x = True
    | otherwise = a `elem` xs
{----------------------------------------------}
{------ CONTAINED IN JUST ONE SENTENCE --------}
{----------------------------------------------}
--containedInSentences :: String -> [String] -> [Maybe String]
--containedInSentences word xss = 
 --   map (map () ) xss 



{----------- Here goes your code --------------}


{----------------------------------------------}
{----------------- MATCH ----------------------}
{----------------------------------------------}




-- match :: Answer -> [String] -> Maybe String
-- match 
--     | (Digit n) [] = Nothing
--     | (Digit n) xs = case (length xs) < n || n <= 0 of
--         True -> Nothing
--         False -> Just (xs!!(n - 1))
--     |(SingleWord s) [] = Nothing
--     -- (SingleWord s) xs 

{----------- Here goes your code --------------}


-- ans :: Maybe String
-- ans = match (SingleWord "Hola") ["Hola","Hola mundo"]

options :: [[Char]]
options = ["1. Hola","2. Hola mundo"]

-- ans2 :: Maybe String
-- ans2 = match (Digit 1) options 



-- main :: IO () 
-- main = print ans2
