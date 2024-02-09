# make

Constructs a new cache with the specified capacity, time to live, and
lookup function.

To import and use `make` from the "Cache" module:

```ts
import * as Cache from "effect/Cache"
// Can be accessed like this
Cache.make
```

**Signature**

```ts
export declare const make: <Key, Environment, Error, Value>(options: {
  readonly capacity: number
  readonly timeToLive: Duration.DurationInput
  readonly lookup: Lookup<Key, Environment, Error, Value>
}) => Effect.Effect<Cache<Key, Error, Value>, never, Environment>
```
