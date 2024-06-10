String longestUniqueSubstring(String str) {
  int maxLength = 0;
  int start = 0;
  String longestSubstr = '';
  Map<String, int> charIndexMap = {};

  for (int end = 0; end < str.length; end++) {
    String char = str[end];
    if (charIndexMap.containsKey(char) && charIndexMap[char]! >= start) {
      start = charIndexMap[char]! + 1;
    }

    charIndexMap[char] = end;
    int currentLength = end - start + 1;

    if (currentLength > maxLength) {
      maxLength = currentLength;
      longestSubstr = str.substring(start, end + 1);
    }
  }

  return longestSubstr;
}
