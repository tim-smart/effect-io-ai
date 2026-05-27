Package: `effect`<br />
Module: `Pool`<br />

## Pool.State

Mutable runtime state maintained by a `Pool`.

**When to use**

Use when you need to inspect or support the runtime state backing a `Pool`,
including its scope, item sets, semaphores, waiters, invalidation tracking,
and shutdown flag.

**Details**

This state tracks the pool scope, active and available items, invalidated
items, semaphores, waiters, and shutdown status. It is exposed for
inspection and implementation support; user code should prefer the
high-level pool operations.

**See**

- `Pool` for the pool value exposing this state
- `PoolItem` for the entries stored in the runtime item sets
- `get` for acquiring items through the high-level API
- `invalidate` for invalidating items through the high-level API

**Signature**

```ts
export interface State<A, E> {
  readonly scope: Scope.Scope
  isShuttingDown: boolean
  readonly semaphore: Semaphore.Semaphore
  readonly resizeSemaphore: Semaphore.Semaphore
  readonly items: Set<PoolItem<A, E>>
  readonly available: Set<PoolItem<A, E>>
  readonly availableLatch: Latch.Latch
  readonly invalidated: Set<PoolItem<A, E>>
  waiters: number
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pool.ts#L145)

Since v4.0.0