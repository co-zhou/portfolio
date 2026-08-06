# Hash Tables

A dictionary implemented with a two-level hash table that is designed for fast lookups and minimal collisions.

- The first level has roughly `sqrt(n)` buckets, where each bucket is sized by a randomly generated hash function chosen so bucket sizes stay balanced.
- Within each bucket, a second hash function is generated to be collision-free for the keys assigned to that bucket.
- Collisions that occur after the initial bulk insert are resolved with separate chaining.

## Run

`./dictionary_test`
