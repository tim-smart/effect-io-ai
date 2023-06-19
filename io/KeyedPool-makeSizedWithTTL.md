# makeSizedWithTTL

Makes a new pool with the specified minimum and maximum sizes and time to
live before a pool whose excess items are not being used will be shrunk
down to the minimum size. The pool is returned in a `Scope`, which governs
the lifetime of the pool. When the pool is shutdown because the `Scope` is
used, the individual items allocated by the pool will be released in some
unspecified order.

The size of the underlying pools can be configured per key.

Part of the `KeyedPool` module, imported from `@effect/io/KeyedPool`.

**Signature**

```ts
export declare const makeSizedWithTTL: <K, R, E, A>(
  get: (key: K) => Effect.Effect<R, E, A>,
  min: (key: K) => number,
  max: (key: K) => number,
  timeToLive: Duration.Duration
) => Effect.Effect<Scope.Scope | R, never, KeyedPool<K, E, A>>
```
