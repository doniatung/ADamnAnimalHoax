Trie createDictionary(){  
  File newFile;
  String word;
  Trie mytree = new Trie();
  int totalWords = 0;
  String[] lines = loadStrings("20k.txt");
  for (int x = 0; x < lines.length; x++){
    word = lines[x];
    System.out.println("Word added to tree: " + word);
    mytree.addWord(word);
    totalWords++;
  }
  System.out.println("Total words entered: " + totalWords);
  System.out.println("Total Nodes in Trie: " + mytree.sizeOf());
  
  return mytree;
    }