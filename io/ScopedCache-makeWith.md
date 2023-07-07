# makeWith

Constructs a new cache with the specified capacity, time to live, and
lookup function, where the time to live can depend on the `Exit` value
returned by the lookup function.

To import and use `makeWith` from the "ScopedCache" module:

```ts
import * as ScopedCache from '@effect/io/ScopedCache'

// Can be accessed like this
ScopedCache.makeWith
```

**Signature**

```ts
export declare const makeWith: <Key, Environment, Error, Value>(options: {
  readonly capacity: number
  readonly lookup: Lookup<Key, Environment, Error, Value>
  readonly timeToLive: (exit: Exit.Exit<Error, Value>) => Duration.DurationInput
}) => Effect.Effect<Scope.Scope | Environment, never, ScopedCache<Key, Error, Value>>
```
