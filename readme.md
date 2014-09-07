title
=====

Features:

* Boards have names and shortcodes
* Threads have IDs
* Posts have IDs
* Boards contain Threads which contain Posts
* posts can contain text, images, or both
* Max file size is 5MB
* 100 threads maximum per board, 10 per page (10 pages)
* 500 post maximum per thread
* Board pages show 3 posts per thread
* Posting returns the thread to spot #1, it sinks lower without any new posts
  * Popular threads tend to stay on the front page
* threads that sink to position 101 or higher are deleted (along with files)
* file names are discarded, replaced with (sha256 hash + extension) #NEED
* Files that are not associated with a post are shredded (shred -vuz) #NEED
* No names, registrations, etc
* captcha? Probably. #NEED

Maybe:

* User created boards? #NEED
* Private boards? #NEED
  * No master list of user-created boards

Considerations:

* Janitors need to log in to clean stuff up
* Bans (time delay and permabans [based on what? IP?])
* User vote to remove threads?
* Democracy-based name?