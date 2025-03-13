Package: `effect`<br />
Module: `Pool`<br />

## Pool.Pool

A `Pool<A, E>` is a pool of items of type `A`, each of which may be
associated with the acquisition and release of resources. An attempt to get
an item `A` from a pool may fail with an error of type `E`.

**Signature**

```ts
export interface Pool<in out A, out E = never> extends Pool.Variance<A, E>, Effect.Effect<A, E, Scope.Scope>, Pipeable {
  /**
   * Retrieves an item from the pool in a scoped effect. Note that if
   * acquisition fails, then the returned effect will fail for that same reason.
   * Retrying a failed acquisition attempt will repeat the acquisition attempt.
   */
  readonly get: Effect.Effect<A, E, Scope.Scope>

  /**
   * Invalidates the specified item. This will cause the pool to eventually
   * reallocate the item, although this reallocation may occur lazily rather
   * than eagerly.
   */
  invalidate(item: A): Effect.Effect<void>

  readonly [Unify.typeSymbol]?: unknown
  readonly [Unify.unifySymbol]?: PoolUnify<this>
  readonly [Unify.ignoreSymbol]?: PoolUnifyIgnore
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Pool.ts#L32)

Since v2.0.0