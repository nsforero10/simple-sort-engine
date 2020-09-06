data Answer = 
    Digit Int
  | SingleWord String

{----------------------------------------------}
{--------------- EXACT MATCH ------------------}
{----------------------------------------------}
exactMatch :: String -> [String] -> Maybe String
exactMatch a xss = if (length (filter (\x -> x /= Nothing) (containedInSentences a xss)) == 1)  
        then  (filter (\x -> x /= Nothing) (containedInSentences a xss)) !! 0 
        else Nothing


{----------------------------------------------}
{------ CONTAINED IN JUST ONE SENTENCE --------}
{----------------------------------------------}
{- Recursive function to search the answer in options-}
containedInSentence :: String -> [String] -> Bool
containedInSentence _ [] = False
containedInSentence a  (x:xs)
    | a == x = True
    | otherwise = a `containedInSentence` xs


{----------------------------------------------}
{------ CONTAINED IN JUST ONE SENTENCE --------}
{----------------------------------------------}
containedInSentences :: String -> [String] -> [Maybe String]
containedInSentences a xss = 
   map (\ xs -> if containedInSentence a (words xs) then Just xs else Nothing) xss


{----------------------------------------------}
{----------------- MATCH ----------------------}
{----------------------------------------------}
match :: Answer -> [String] -> Maybe String
match  _ [] = Nothing
match (Digit n) xss = if n < 0 && (length xss) >= n 
            then Nothing
        else Just (xss!!(n - 1))
match (SingleWord a) xss = exactMatch a xss 


options :: [[Char]]
options = ["1. Hola","2. Hola mundo"]


ans :: Maybe String
ans = match (SingleWord "Hola") options


ans2 :: Maybe String
ans2 = match (Digit 2) options 



main :: IO () 
main = print ans
