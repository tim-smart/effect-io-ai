Package: `effect`<br />
Module: `Pool`<br />

## Pool.PoolItem

Internal record for a value managed by a `Pool`.

**Details**

Each item stores the acquisition `Exit`, its finalizer, the current
reference count, and whether automatic reclaiming has been disabled because
the item was invalidated.

**Signature**

```ts
export interface PoolItem<A, E> {
  readonly exit: Exit.Exit<A, E>
  finalizer: Effect.Effect<void>
  refCount: number
  disableReclaim: boolean
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pool.ts#L122)

Since v4.0.0