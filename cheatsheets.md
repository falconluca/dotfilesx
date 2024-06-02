**Bash Brace Expansion**

```bash
# Brace expansion:
$ echo {Hello, World}x 
= echo Hello xWorldx

# With an empty string:
$ cp some_file{, bak} 
= cp some_file some_file.bak

# In a path:
$ m x/{before, after}/asdf/file 
= mv x/before/asdf/file x/after/asdf/file

# Number range:
$ rm d{01..20}/file
= rm dol/file d02/file d03/file do4/file ... etc.

# Multiple braces:
$ touch {a,b,c}.{rs, cpp}
= touch a.rs a.cpp b.rs b.cp c.rs c.cpp

# Nested braces:
$ git add {main, ×{1,2}} .rs 
= git add main.rs x1.rs ×2. rs

# Letter range:
$ cat {a..f}. txt
= cat a.txt b.txt c.txt d.txt e.txt f. txt
```

**Redis Op**

```bash
# String
SET key value
GET key
DEL key 

# Hash
HSET hash_key field value
HGET hash_key field
HGETALL hash_key
HDEL hash_key field

# List
LPUSH list_key element1 element2 element3
RPUSH list_key element4 element5 element6
LRANGE list_key start stop
LPOP list_key

# Set
SADD myset element1 element2 element3
SISMEMBER myset element
SREM myset element
SPOP myset # 随机
SMEMBERS myset
SCARD myset # 集合大小

# Sorted Set
ZADD myzset score1 member1
ZADD myzset score2 member2 score3 member3
ZREM myzset member
ZREMRANGEBYSCORE myzset min max # 移除有序集合中分数在指定范围内的元素
ZRANK myzset member
ZSCORE myzset member # 获取有序集合中指定元素的分数
ZRANGE myzset start stop # 获取有序集合中指定范围内的元素（按分数从低到高排序）
```



