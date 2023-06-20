# makeWith

Constructs a new cache with the specified capacity, time to live, and
lookup function, where the time to live can depend on the `Exit` value
returned by the lookup function.

To import and use `makeWith` from the "Cache" module:

```ts
import * as Cache from '@effect/io/Cache'

// Can be accessed like this
Cache.makeWith
```

**Signature**

```ts
export declare const makeWith: <Key, Environment, Error, Value>(
  capacity: number,
  lookup: Lookup<Key, Environment, Error, Value>,
  timeToLive: (exit: Exit.Exit<Error, Value>) => Duration.Duration
) => Effect.Effect<Environment, never, Cache<Key, Error, Value>>
```
