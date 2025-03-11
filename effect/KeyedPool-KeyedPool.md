## KeyedPool

A `KeyedPool<K, A, E>` is a pool of `Pool`s of items of type `A`. Each pool
in the `KeyedPool` is associated with a key of type `K`.

**Signature**

```ts
export interface KeyedPool<in K, in out A, out E = never> extends KeyedPool.Variance<K, A, E>, Pipeable {
  /**
   * Retrieves an item from the pool belonging to the given key in a scoped
   * effect. Note that if acquisition fails, then the returned effect will fail
   * for that same reason. Retrying a failed acquisition attempt will repeat the
   * acquisition attempt.
   */
  get(key: K): Effect.Effect<A, E, Scope.Scope>

  /**
   * Invalidates the specified item. This will cause the pool to eventually
   * reallocate the item, although this reallocation may occur lazily rather
   * than eagerly.
   */
  invalidate(item: A): Effect.Effect<void>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/KeyedPool.ts#L30)

Since v2.0.0