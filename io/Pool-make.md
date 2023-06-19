# make

Makes a new pool of the specified fixed size. The pool is returned in a
`Scope`, which governs the lifetime of the pool. When the pool is shutdown
because the `Scope` is closed, the individual items allocated by the pool
will be released in some unspecified order.

Part of the `Pool` module, imported from `@effect/io/Pool`.

**Signature**

```ts
export declare const make: <R, E, A>(
  get: Effect.Effect<R, E, A>,
  size: number
) => Effect.Effect<Scope.Scope | R, never, Pool<E, A>>
```
