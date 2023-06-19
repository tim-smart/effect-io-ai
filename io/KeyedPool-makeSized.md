# makeSized

Makes a new pool of the specified fixed size. The pool is returned in a
`Scope`, which governs the lifetime of the pool. When the pool is shutdown
because the `Scope` is closed, the individual items allocated by the pool
will be released in some unspecified order.

Part of the `KeyedPool` module, imported from `@effect/io/KeyedPool`.

**Signature**

```ts
export declare const makeSized: <K, R, E, A>(
  get: (key: K) => Effect.Effect<R, E, A>,
  size: number
) => Effect.Effect<Scope.Scope | R, never, KeyedPool<K, E, A>>
```
