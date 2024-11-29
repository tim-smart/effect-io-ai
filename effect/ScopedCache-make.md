# make

Constructs a new cache with the specified capacity, time to live, and
lookup function.

To import and use `make` from the "ScopedCache" module:

ts
import \* as ScopedCache from "effect/ScopedCache"
// Can be accessed like this
ScopedCache.make
undefined

**Signature**

```ts
export declare const make: <Key, Value, Error = never, Environment = never>(options: {
  readonly lookup: Lookup<Key, Value, Error, Environment>
  readonly capacity: number
  readonly timeToLive: Duration.DurationInput
}) => Effect.Effect<ScopedCache<Key, Value, Error>, never, Scope.Scope | Environment>
```
