import Foundation

func solution(_ s:String) -> Bool
{
    func countFilter(_ words: String, _ word: Character) -> Int {
        return s.lowercased().filter { $0 == word }.count
    }
    return countFilter(s, "p") == countFilter(s, "y")
}

