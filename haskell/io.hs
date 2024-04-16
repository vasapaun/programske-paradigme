import System.IO
import Text.Read (readMaybe)

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

main :: IO()

main = do
    putStrLn "Enter a number: "
    numberStr <- getLine
    numberStr <- getLine
    let maybeNumber = readMaybe numberStr :: Maybe Integer
    case maybeNumber of
        Just number -> putStrLn ("Processed: " ++ show (factorial number))
        Nothing     -> putStrLn "Invalid input. Please provide a number!"
