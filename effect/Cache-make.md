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
export declare const make: <Key, Value, Error = never, Environment = never>(options: {
  readonly capacity: number
  readonly timeToLive: Duration.DurationInput
  readonly lookup: Lookup<Key, Value, Error, Environment>
}) => Effect.Effect<Cache<Key, Value, Error>, never, Environment>
```
