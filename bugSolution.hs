The solution uses the `Data.Sequence` module, which provides an efficient implementation of sequences. The `Data.Sequence` module offers amortized O(1) time complexity for appending elements to the end of the sequence,  and O(log n) complexity for inserting/appending elements at the head or middle of the sequence. This improves the performance significantly compared to repeatedly using `++`.  

```haskell
import qualified Data.Sequence as Seq

solution :: [Int] -> Seq.Seq Int
solution xs = foldl' (Seq.|> ) Seq.empty xs

main :: IO ()
main = do
  let myList = [1..100000]
  let efficientList = solution myList 
  print (Seq.length efficientList)
```