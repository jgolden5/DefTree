# DefTree: Define every piece of info until I know it all
## Main operation: addDefinition()
1. User wants to add a definition of a new word to a file called definitions.txt
2. User is prompted to write a definition for said new word
3. Program iterates through each word in said definition one word at a time and does the following for each:
  - a) checks if the word exists in a file called filler.txt or a file called definitions.txt, if so, continue to the next word, else proceed to step b.
  - b) asks the user if they want to add a definition for said word. If user says no, the word gets added to filler.txt to be filtered out in the future as a word for which no definition is desired, else continue to step c.
  - c) add current word to an array called "definitionQueue", then proceed to the next word and repeat step 3 for all words in the current definition.
4. Repeat steps 1-3 for every word in the definitionQueue, which can and usually will be recursively added to as definitions are traversed. The idea is that every word which the user doesn't yet understand receives a definition until the user has an understandable definition for every word.

## Other features:
### DefinitionQueue.add(nameOfDefToAdd)/.remove(nameOfDefToRemove)/.delete()
_User may break from definitionQueue and choose to continue later and the definitionQueue will be saved for later. DefinitionQueue can also be manually added to or deleted from_
