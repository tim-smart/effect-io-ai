# make

Makes a new pool of the specified fixed size. The pool is returned in a
`Scope`, which governs the lifetime of the pool. When the pool is shutdown
because the `Scope` is closed, the individual items allocated by the pool
will be released in some unspecified order.

By setting the `concurrency` parameter, you can control the level of concurrent
access per pool item. By default, the number of permits is set to `1`.

`targetUtilization` determines when to create new pool items. It is a value
between 0 and 1, where 1 means only create new pool items when all the existing
items are fully utilized.

A `targetUtilization` of 0.5 will create new pool items when the existing items are
50% utilized.

To import and use `make` from the "Pool" module:

ts
import \* as Pool from "effect/Pool"
// Can be accessed like this
Pool.make
undefined

**Signature**

```ts
export declare const make: <A, E, R>(options: {
  readonly acquire: Effect.Effect<A, E, R>
  readonly size: number
  readonly concurrency?: number | undefined
  readonly targetUtilization?: number | undefined
}) => Effect.Effect<Pool<A, E>, never, Scope.Scope | R>
```
