# make

Constructs a new cache with the specified capacity, time to live, and
lookup function.

To import and use `make` from the "Cache" module:

```ts
import * as Cache from '@effect/io/Cache'

// Can be accessed like this
Cache.make
```

**Signature**

```ts
export declare const make: <Key, Environment, Error, Value>(
  capacity: number,
  timeToLive: Duration.Duration,
  lookup: Lookup<Key, Environment, Error, Value>
) => Effect.Effect<Environment, never, Cache<Key, Error, Value>>
```