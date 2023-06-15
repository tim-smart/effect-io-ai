# get

Retrieves an item from the pool in a scoped effect. Note that if
acquisition fails, then the returned effect will fail for that same reason.
Retrying a failed acquisition attempt will repeat the acquisition attempt.

Part of the `Pool` module from the `@effect/io` package. Also known as `Pool.get`.
