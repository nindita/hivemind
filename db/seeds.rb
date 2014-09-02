Board.create!([
  {name: "News", shortcode: "n"}
])
Post.create!([
  {content: "First post!11!11!", threadd_id: 1},
  {content: "another post!!", threadd_id: 1},
  {content: "THIS IS THE THIRD POST YOU SHOULDNT SEE THIS UNLESS YOU'RE IN THE THREAD", threadd_id: 1},
  {content: "Yet another post", threadd_id: 1},
  {content: "The last post!!", threadd_id: 1}
])
Threadd.create!([
  {name: "FIRST POST", board_id: 1}
])
