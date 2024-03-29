# make

Makes a new pool of the specified fixed size. The pool is returned in a
`Scope`, which governs the lifetime of the pool. When the pool is shutdown
because the `Scope` is closed, the individual items allocated by the pool
will be released in some unspecified order.

To import and use `make` from the "Pool" module:

```ts
import * as Pool from "effect/Pool"
// Can be accessed like this
Pool.make
```

**Signature**

```ts
export declare const make: <A, E, R>(options: {
  readonly acquire: Effect.Effect<A, E, R>
  readonly size: number
}) => Effect.Effect<Pool<A, E>, never, Scope.Scope | R>
```
