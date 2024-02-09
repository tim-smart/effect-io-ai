# makeWith

Constructs a new cache with the specified capacity, time to live, and
lookup function, where the time to live can depend on the `Exit` value
returned by the lookup function.

To import and use `makeWith` from the "ScopedCache" module:

```ts
import * as ScopedCache from "effect/ScopedCache"
// Can be accessed like this
ScopedCache.makeWith
```

**Signature**

```ts
export declare const makeWith: <Key, Environment, Error, Value>(options: {
  readonly capacity: number
  readonly lookup: Lookup<Key, Environment, Error, Value>
  readonly timeToLive: (exit: Exit.Exit<Value, Error>) => Duration.DurationInput
}) => Effect.Effect<ScopedCache<Key, Error, Value>, never, Scope.Scope | Environment>
```
