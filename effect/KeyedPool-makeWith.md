## makeWith

Makes a new pool of the specified fixed size. The pool is returned in a
`Scope`, which governs the lifetime of the pool. When the pool is shutdown
because the `Scope` is closed, the individual items allocated by the pool
will be released in some unspecified order.

The size of the underlying pools can be configured per key.

**Signature**

```ts
declare const makeWith: <K, A, E, R>(options: { readonly acquire: (key: K) => Effect.Effect<A, E, R>; readonly size: (key: K) => number; }) => Effect.Effect<KeyedPool<K, A, E>, never, Scope.Scope | R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/KeyedPool.ts#L91)

Since v2.0.0