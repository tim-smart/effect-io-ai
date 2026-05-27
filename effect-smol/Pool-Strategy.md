Package: `effect`<br />
Module: `Pool`<br />

## Pool.Strategy

Strategy used by a `Pool` to manage background resizing and item
reclamation.

**When to use**

Use when defining a custom pool lifecycle policy that needs to run background
work, observe acquired items, or choose items for reclamation.

**Details**

`run` starts any strategy-specific background work, `onAcquire` is invoked
when an item is acquired, and `reclaim` selects an item that can be removed
or replaced.

**See**

- `makeWithStrategy` for constructing a pool from a custom `Strategy`

**Signature**

```ts
export interface Strategy<A, E> {
  readonly run: (pool: Pool<A, E>) => Effect.Effect<void>
  readonly onAcquire: (item: PoolItem<A, E>) => Effect.Effect<void>
  readonly reclaim: (pool: Pool<A, E>) => Effect.Effect<PoolItem<A, E> | undefined>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pool.ts#L205)

Since v4.0.0