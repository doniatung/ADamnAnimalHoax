<h2>Scrabble by A Damn Animal Hoax</h2>

<h3>Roster</h3>
<ul><li>Max Chan</li>
<li>Manahal Tabassum</li>
<li>Donia Tung</li>
</ul>

<h3>Launch Instructions</h3>
<t>To start, clone this repo into a new directory. Open this directory, then open /playGame/playGame.pde with Processing.  Hit the 'play' button to get started<br>

<h3>Description</h3>
<t>In this game of Scrabble, you will compete against another player to see who will rack up the most points.  A player earns points by placing tiles in his or her deck onto the Scrabble board to form words.  Different tiles will have different point values, and certain slots on the board will award bonuses.<br>

<h3>How does it work?</h3>
<ul>
<li>The tiles on the board are stored in a two-dimensional array of tiles.
Each tile will have either int or boolean (or both!) variables that keep track of the value ascribed to it, as well as its value multiplier if it has one</li>
<li>The pile of letters/tiles from which the user takes new ones are stored in an ArrayList with letters that are randomly added at the start of every new game</li>
<li>A user’s tiles are stored in an array List. When a tile is drawn, a letter from the draw pile which is a stack is removed and added to the user’s array</li>
<li>Each letter will be assigned a static value as its point value</li>
<li>Each time a word is played, a player will gain points based on the value
assigned to the letter</li>
<li>By searching for the word in the Word Trie, it can be determined whether
the word being played is a valid word. If so, then place the word. If it is not, a new word must be played</li>
</ul>
