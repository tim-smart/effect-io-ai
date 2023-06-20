# make

Constructs a new cache with the specified capacity, time to live, and
lookup function.

To import and use `make` from the "ScopedCache" module:

```ts
import * as ScopedCache from '@effect/io/ScopedCache'

// Can be accessed like this
ScopedCache.make
```

**Signature**

```ts
export declare const make: <Key, Environment, Error, Value>(
  capacity: number,
  timeToLive: Duration.Duration,
  lookup: Lookup<Key, Environment, Error, Value>
) => Effect.Effect<Scope.Scope | Environment, never, ScopedCache<Key, Error, Value>>
```
