Package: `effect`<br />
Module: `Pool`<br />

## Pool.PoolItem

Internal record for a value managed by a `Pool`.

**When to use**

Use when implementing a custom pool `Strategy` that needs to inspect
acquired items, track reference counts, or return reclaimable items to the
pool.

**Details**

Each item stores the acquisition `Exit`, its finalizer, the current
reference count, and whether automatic reclaiming has been disabled because
the item was invalidated.

**See**

- `Strategy` for the custom strategy callbacks that receive and return pool items
- `State` for the runtime sets that store active, available, and invalidated pool items

**Signature**

```ts
export interface PoolItem<A, E> {
  readonly exit: Exit.Exit<A, E>
  finalizer: Effect.Effect<void>
  refCount: number
  disableReclaim: boolean
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Pool.ts#L142)

Since v4.0.0