Package: `effect`<br />
Module: `PartitionedSemaphore`<br />

## PartitionedSemaphore.make

Creates a `PartitionedSemaphore` inside an `Effect`.

**When to use**

Use when semaphore construction should stay inside an `Effect` workflow.

**Details**

The `permits` option sets the shared permit capacity. The resulting
semaphore tracks waiters by partition key and distributes released permits
across waiting partitions in round-robin order.

**Gotchas**

Negative permit counts are clamped to `0`. Non-finite permit counts create
an unbounded semaphore.

**See**

- `makeUnsafe` for synchronous construction

**Signature**

```ts
declare const make: <K = unknown>(options: { readonly permits: number; }) => Effect.Effect<PartitionedSemaphore<K>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PartitionedSemaphore.ts#L325)

Since v3.19.4