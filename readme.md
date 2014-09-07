HIVEMIND ImageBoard
===================

## HIVEMIND is anonymous imageboard software.

### To say it bluntly, it's early 4chan, but open source, and built with rails.

Features:

* Boards have names, shortcodes, and descriptions
* Boards contain Threads which contain Posts
* A post can contain text, images, or both
* Max file size is 5MB
* 100 threads maximum per board, 10 per page (10 pages)
* 500 post maximum per thread
* Board pages show 3 posts per thread
* Posting returns the thread to spot #1, it sinks lower without any new posts
  * Popular threads tend to stay on the front page
* Threads that sink to position 101 or higher are deleted (along with files) via a scheduled rake task
* No names, registrations, etc
