STRING: anything can be stored as a string including photos
c -set, setnx, setex, set, psetex, msetnx, mget, setbit
r- get,getbit, getrange, strlen, bitcount, bitpos, mget
u- append, setrange, incrby, incr, decr, decrby, incrbyfloat
d-del

LISTS: lists of strings, sorted by insertion order, can add on to end and beginning, main features involve time complexity, often used for timelines or jobs
c-lset, rpush, lpush, lpushx, rpushx
r-lindex, llen, lrange,
u-ltrim
d- blpop, brpop, lrem,

SETS: unordered collections of strings
does not allow repeated members, can track unique things, good to represent relations, to extract elements at random
c-sadd, sunionstore, sunion
r-scard, smembers, srandmember
u-sdiff, sdiffstore, smove
d-spop



c- creating or inserting
