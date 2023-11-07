# makeWith

Makes a new pool of the specified fixed size. The pool is returned in a
`Scope`, which governs the lifetime of the pool. When the pool is shutdown
because the `Scope` is closed, the individual items allocated by the pool
will be released in some unspecified order.

The size of the underlying pools can be configured per key.

To import and use `makeWith` from the "KeyedPool" module:

```ts
import * as KeyedPool from 'effect/KeyedPool'

// Can be accessed like this
KeyedPool.makeWith
```

**Signature**

```ts
export declare const makeWith: <K, R, E, A>(options: {
  readonly acquire: (key: K) => Effect.Effect<R, E, A>
  readonly size: (key: K) => number
}) => Effect.Effect<Scope.Scope | R, never, KeyedPool<K, E, A>>
```
