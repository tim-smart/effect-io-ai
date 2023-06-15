# get

Retrieves an item from the pool belonging to the given key in a scoped
effect. Note that if acquisition fails, then the returned effect will fail
for that same reason. Retrying a failed acquisition attempt will repeat the
acquisition attempt.

Part of the `KeyedPool` module from the `@effect/io` package. Also known as `KeyedPool.get`.
