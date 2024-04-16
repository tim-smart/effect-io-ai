# makeWith

Constructs a new cache with the specified capacity, time to live, and
lookup function, where the time to live can depend on the `Exit` value
returned by the lookup function.

To import and use `makeWith` from the "Cache" module:

```ts
import * as Cache from "effect/Cache"
// Can be accessed like this
Cache.makeWith
```

**Signature**

```ts
export declare const makeWith: <Key, Value, Error = never, Environment = never>(options: {
  readonly capacity: number
  readonly lookup: Lookup<Key, Value, Error, Environment>
  readonly timeToLive: (exit: Exit.Exit<Value, Error>) => Duration.DurationInput
}) => Effect.Effect<Cache<Key, Value, Error>, never, Environment>
```
