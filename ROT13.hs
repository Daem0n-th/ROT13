import System.Environment
import Data.Char (ord,chr,toLower,isLetter)

rotn n = map (\x -> chr $ ord 'a' + mod ((ord (toLower x) - ord 'a') + n) 26)

main :: IO ()
main = do
    args <- getArgs
    if null args then putStrLn "No string supplied.Exiting..." 
    else
        if all isLetter $ concat args then putStrLn $ unwords $ map (rotn 13) args
        else putStrLn "Error:Must Contain only Letters and/or spaces"
    
