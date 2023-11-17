# make

Constructs a new cache with the specified capacity, time to live, and
lookup function.

To import and use `make` from the "ScopedCache" module:

```ts
import * as ScopedCache from "effect/ScopedCache"
// Can be accessed like this
ScopedCache.make
```

**Signature**

```ts
export declare const make: <Key, Environment, Error, Value>(options: {
  readonly lookup: Lookup<Key, Environment, Error, Value>
  readonly capacity: number
  readonly timeToLive: Duration.DurationInput
}) => Effect.Effect<Scope.Scope | Environment, never, ScopedCache<Key, Error, Value>>
```
