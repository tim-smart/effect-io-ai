Package: `effect`<br />
Module: `Pool`<br />

## Pool.Strategy

Strategy used by a `Pool` to manage background resizing and item
reclamation.

**Details**

`run` starts any strategy-specific background work, `onAcquire` is invoked
when an item is acquired, and `reclaim` selects an item that can be removed
or replaced.

**Signature**

```ts
export interface Strategy<A, E> {
  readonly run: (pool: Pool<A, E>) => Effect.Effect<void>
  readonly onAcquire: (item: PoolItem<A, E>) => Effect.Effect<void>
  readonly reclaim: (pool: Pool<A, E>) => Effect.Effect<PoolItem<A, E> | undefined>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pool.ts#L142)

Since v4.0.0