# make

Makes a new pool of the specified fixed size. The pool is returned in a
`Scope`, which governs the lifetime of the pool. When the pool is shutdown
because the `Scope` is closed, the individual items allocated by the pool
will be released in some unspecified order.

To import and use `make` from the "KeyedPool" module:

```ts
import * as KeyedPool from "effect/KeyedPool"
// Can be accessed like this
KeyedPool.make
```

**Signature**

```ts
export declare const make: <K, A, E, R>(options: {
  readonly acquire: (key: K) => Effect.Effect<A, E, R>
  readonly size: number
}) => Effect.Effect<KeyedPool<K, A, E>, never, Scope.Scope | R>
```
