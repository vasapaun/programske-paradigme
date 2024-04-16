import System.IO

type BankAccount  = (String, Int)
type BankDatabase = [BankAccount]

-- Check if account exists
accountExists :: BankDatabase -> String -> Bool
accountExists bankAccs accNum = any (\(acc, _) -> acc == accNum) bankAccs

openAcc :: BankDatabase -> String -> BankDatabase
openAcc bankAccs accNum
    | accountExists bankAccs accNum = bankAccs  -- Don't add account, return same BankDatabase
    | otherwise = (accNum, 0) : bankAccs        -- Add (accNum, 0) to BankDatabase

closeAcc :: BankDatabase -> String -> BankDatabase
closeAcc bankAccs accNum = filter (\(acc, _) -> acc /= accNum) bankAccs

depositToAcc :: BankDatabase -> String -> Int -> BankDatabase
depositToAcc bankAccs accNum depositAmount = map(updateAccount accNum depositAmount) bankAccs
    where
        updateAccount :: String -> Int -> BankAccount -> BankAccount
        updateAccount accNum depositAmount (acc, balance)
            | acc == accNum = (acc, balance + depositAmount)
            | otherwise = (acc, balance)
