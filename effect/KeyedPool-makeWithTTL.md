Package: `effect`<br />
Module: `KeyedPool`<br />

## KeyedPool.makeWithTTL

Makes a new pool with the specified minimum and maximum sizes and time to
live before a pool whose excess items are not being used will be shrunk
down to the minimum size. The pool is returned in a `Scope`, which governs
the lifetime of the pool. When the pool is shutdown because the `Scope` is
used, the individual items allocated by the pool will be released in some
unspecified order.

The size of the underlying pools can be configured per key.

**Signature**

```ts
declare const makeWithTTL: <K, A, E, R>(options: { readonly acquire: (key: K) => Effect.Effect<A, E, R>; readonly min: (key: K) => number; readonly max: (key: K) => number; readonly timeToLive: Duration.DurationInput; }) => Effect.Effect<KeyedPool<K, A, E>, never, Scope.Scope | R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/KeyedPool.ts#L111)

Since v2.0.0