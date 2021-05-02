loop :: Bool -> IO ()
loop on = do 
    if on == True 
        then do
            putStrLn ("First number please:")
            first_number <- getLine
            putStrLn ("Second number please:")
            second_number <- getLine
            putStrLn ("Operations:\n1)+\n2)-\n")
            select <- getLine 
            putStrLn ("Answer: ")
            
            let first = read first_number   :: Int
            let second = read second_number :: Int
            let election = read select      :: Int
            
            case election of
                1 -> print (first + second)
                2 -> print (first - second) 
                _ -> putStrLn "error"

            putStrLn "do you want to still here?\n1)yes\n2)not"

            exit <- getLine 
            let continuo = read exit :: Int

            case continuo of
                1 -> loop True 
                2 -> loop False 
                _ -> putStrLn "error"
            
    else putStrLn "stoped"


main :: IO()
main = do 
    putStrLn ("Welcome my friend!!")
    loop True
    putStrLn ("Byeee")   