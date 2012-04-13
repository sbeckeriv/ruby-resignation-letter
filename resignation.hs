module Main where

import Random

pick xs = randomRIO (0, length xs - 1) >>= return . (xs !!)

resignation name date kind_note reason signoff = unlines output
    where output = map fold [intro, main, exit]
          fold = foldl (++) ""
          intro = [reason, " ", kind_note]
          main = ["I, ", name, " hereby resign effective as of ", date]
          exit = [signoff, "- ", name]

main = do reason <- pick reasons
          putStrLn $ resignation name date note reason signoff
       where name = "Becker"
             date = "2012-04-27"
             note = "I must cheer from the sidelines now."
             signoff = "Until an asteroid,"
             reasons = [
               "It is time for me to move on.",
               "A T-rex told me in a dream to find a new job.",
               "I want to spend more time with my family.",
               "I'm joining the Peace Corps.",
               "My Facebook for Dogs startup got funded.",
               "I am going to buy storage lockers and get on TV.",
               "I need to devote more time to upvoting articles on Hacker News."
               ]
