# makeSizedWith

Makes a new pool of the specified fixed size. The pool is returned in a
`Scope`, which governs the lifetime of the pool. When the pool is shutdown
because the `Scope` is closed, the individual items allocated by the pool
will be released in some unspecified order.

The size of the underlying pools can be configured per key.

To import and use `makeSizedWith` from the "KeyedPool" module:

```ts
import * as KeyedPool from '@effect/io/KeyedPool'

// Can be accessed like this
KeyedPool.makeSizedWith
```

**Signature**

```ts
export declare const makeSizedWith: <K, R, E, A>(
  get: (key: K) => Effect.Effect<R, E, A>,
  size: (key: K) => number
) => Effect.Effect<Scope.Scope | R, never, KeyedPool<K, E, A>>
```