# make

Constructs a new cache with the specified capacity, time to live, and
lookup function.

Part of the `ScopedCache` module, imported from `@effect/io/ScopedCache`.

**Signature**

```ts
export declare const make: <Key, Environment, Error, Value>(
  capacity: number,
  timeToLive: Duration.Duration,
  lookup: Lookup<Key, Environment, Error, Value>
) => Effect.Effect<Scope.Scope | Environment, never, ScopedCache<Key, Error, Value>>
```
