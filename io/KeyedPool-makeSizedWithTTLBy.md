# makeSizedWithTTLBy

Makes a new pool with the specified minimum and maximum sizes and time to
live before a pool whose excess items are not being used will be shrunk
down to the minimum size. The pool is returned in a `Scope`, which governs
the lifetime of the pool. When the pool is shutdown because the `Scope` is
used, the individual items allocated by the pool will be released in some
unspecified order.

The size of the underlying pools can be configured per key.

To import and use `makeSizedWithTTLBy` from the "KeyedPool" module:

```ts
import * as KeyedPool from '@effect/io/KeyedPool'

// Can be accessed like this
KeyedPool.makeSizedWithTTLBy
```

**Signature**

```ts
export declare const makeSizedWithTTLBy: <K, R, E, A>(
  get: (key: K) => Effect.Effect<R, E, A>,
  min: (key: K) => number,
  max: (key: K) => number,
  timeToLive: (key: K) => Duration.Duration
) => Effect.Effect<Scope.Scope | R, never, KeyedPool<K, E, A>>
```
