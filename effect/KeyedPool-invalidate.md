## invalidate

Invalidates the specified item. This will cause the pool to eventually
reallocate the item, although this reallocation may occur lazily rather
than eagerly.

**Signature**

```ts
declare const invalidate: { <A>(item: A): <K, E>(self: KeyedPool<K, A, E>) => Effect.Effect<void>; <K, A, E>(self: KeyedPool<K, A, E>, item: A): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/KeyedPool.ts#L164)

Since v2.0.0