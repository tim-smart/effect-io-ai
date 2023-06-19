# invalidate

Invalidates the specified item. This will cause the pool to eventually
reallocate the item, although this reallocation may occur lazily rather
than eagerly.

Part of the `KeyedPool` module, imported from `@effect/io/KeyedPool`.

**Signature**

```ts
export declare const invalidate: {
  <A>(item: A): <K, E>(self: KeyedPool<K, E, A>) => Effect.Effect<never, never, void>
  <K, E, A>(self: KeyedPool<K, E, A>, item: A): Effect.Effect<never, never, void>
}
```
