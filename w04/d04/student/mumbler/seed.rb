require 'redis'
redis = Redis.new

redis.del("mumble:entries")

mumbles =  [{
text: "Thinking about time, and what it does to us...",
image: "http://goo.gl/scTB1I",
date: "2014-11-03",
tags: "#thuglife #beauty",
author_email: "kristin.eugenio@generalassemb.ly",
author_handle: "eugenius",
author_thumbnail: "http://photos-d.ak.instagram.com/hphotos-ak-xpf1/10554197_777637282292435_572425562_a.jpg",
likes: 1
},
 {
text: "Making lemonade, out of all my lemons.",
image: "http://goo.gl/scTB1I",
date: "2014-11-07",
tags: "#lemons #lemonade",
author_email: "crazy.coder@generalassemb.ly",
author_handle: "crazycoder",
author_thumbnail: "http://photos-d.ak.instagram.com/hphotos-ak-xpf1/10554197_777637282292435_572425562_a.jpg",
likes: 7
}]


mumbles.each do |mumble|
  redis.rpush("mumble::entries", mumble)
end

# mumbles.each do |mumble|
# end
