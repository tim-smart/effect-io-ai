# make

Constructs a new cache with the specified capacity, time to live, and
lookup function.

Part of the `Cache` module, imported from `@effect/io/Cache`.

**Signature**

```ts
export declare const make: <Key, Environment, Error, Value>(
  capacity: number,
  timeToLive: Duration.Duration,
  lookup: Lookup<Key, Environment, Error, Value>
) => Effect.Effect<Environment, never, Cache<Key, Error, Value>>
```
